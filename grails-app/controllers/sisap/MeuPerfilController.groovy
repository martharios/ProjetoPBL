package sisap

import static sisap.Pessoa.*

class MeuPerfilController {

    def index() {
        def pessoaInstance = Pessoa.findByUsuario(Usuario.findByLogin(session.login))
        println pessoaInstance.nome
        render(view: 'index', model: [pessoaInstance: pessoaInstance])
    }
}
