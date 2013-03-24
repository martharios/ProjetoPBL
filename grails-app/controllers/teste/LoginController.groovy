package teste

import sisap.Pessoa
import sisap.Usuario

class LoginController {

    def index() {
        if (session.auth){
            render(view: '/index')
        }else{
            render(view: 'loginPage')
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
            session.login = pessoa.email
            session.nome = pessoa?.nome

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
