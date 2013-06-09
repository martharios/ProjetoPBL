package teste

import sisap.Pessoa
import sisap.Usuario

class LoginController {

    def index() {
        if (session.auth){
            render(view: '/index')
            return
        }else{
            render(view: 'loginPage')
            return
        }

    }
    def logon(){
        def pessoa
        if ((params.password && params.login)){
                pessoa = Pessoa.findByMatriculaAndSenha(params.login, params.password)
            if (!pessoa){
                pessoa = Pessoa.findByEmailAndSenha(params.login, params.password)
            }
        }
        println pessoa
        if (pessoa){
            session.auth=true
            session.idPessoa = pessoa.id
            session.nome = pessoa?.nome
            session.perfilId = pessoa?.perfilId

            render(view: '/index')
        }  else{
            flash.message= "Usuário ou senha inválidos"
            render(view: 'loginPage')
        }
    }
    def logout(){
        session.invalidate()
        render(view: 'loginPage')
    }
}
