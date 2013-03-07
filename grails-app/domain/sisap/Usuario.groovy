package sisap

class Usuario {

    String nome
    String login
    String senha

    static constraints = {
        nome(nullable: false, blank: false)
        login(nullable: false, blank: false)
        senha(nullable: false, blank: false)
    }
    def beforeValidate(){
        senha = senha.encodeAsMD5()
    }
}
