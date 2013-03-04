package sisap

class Usuario {

    String login
    String nome
    String senha

    def beforeValidate() {
        if (login && nome){
            senha =  senha.encodeAsMD5()
        }

    }

    static constraints = {
        login(nullable: false, blank: false)
        nome(nullable: false, blank: false)
        senha(nullable: false, blank: false)
    }
}
