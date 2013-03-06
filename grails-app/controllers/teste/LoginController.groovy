package teste

class LoginController {

    def index() {
        render(view: 'loginPage')
    }
    def logon(){
        render(view: '/index')
    }
}
