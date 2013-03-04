package sisap

class Usuario {

    String login
    String nome
    String senha

    def beforeValidate() {
        senha =  senha.encodeAsMD5()
    }

    static constraints = {
    }
}
