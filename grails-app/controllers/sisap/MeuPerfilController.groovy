package sisap

import static sisap.Pessoa.*

class MeuPerfilController {

    def index() {
        def pessoaInstance = Pessoa.findByUsuario(Usuario.findByLogin(session.login))
        println pessoaInstance.nome
        render(view: 'index', model: [pessoaInstance: pessoaInstance])
    }
    def ajaxAlterarSenha(Long id){
        render(template: 'alterarSenha', model: [pessoaInstance: Pessoa.read(id)])
    }
    def alterarSenha = {
        def pessoa = Pessoa.get(params.id)
        pessoa.senha = params.novasenhaConfirm
        if (pessoa.save(flush: true)){
            render g.messageSuccess(message: "Senha Alterada!")
        }else{
            render "Não alterado"
        }
        return
    }
}
