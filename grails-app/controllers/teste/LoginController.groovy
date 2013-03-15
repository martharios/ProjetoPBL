package teste

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
        def usuario
        if (params.password && params.login){
            usuario = Usuario.findByLoginAndSenha(params.login, params.password.encodeAsMD5())
        }
        println usuario
        if (usuario){
            session.auth=true
            session.login = usuario.login
            println usuario.pessoa
            session.nome = usuario?.pessoa?.nome

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
