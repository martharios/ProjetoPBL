package sisap

class LoginController {

    def index() {
        render(view:  'loginPage')
    }
    def authenticate = {
        render(view: "/index")
    }
}
