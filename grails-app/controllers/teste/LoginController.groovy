package teste

import sisap.Usuario

class LoginController {

    def index() {
        render(view: 'loginPage')
    }
    def logon(){
        println params
        def usuario
        if (params.password && params.login){
            usuario = Usuario.findByLoginAndSenha(params.login, params.password.encodeAsMD5())
        }
        println usuario
        if (usuario){
            session.login = usuario.login
            session.nome = usuario.nome
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
