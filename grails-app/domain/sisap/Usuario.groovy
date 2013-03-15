package sisap

class Usuario {

    String login
    String senha
    Pessoa pessoa

    static hasOne = [pessoa: Pessoa]

    static constraints = {
        login(nullable: false, blank: false)
        senha(nullable: false, blank: false)
        pessoa(nullable: true)
    }
    def beforeInsert  = {
        senha = senha.encodeAsMD5()
    }
    static mapping = {
        version false
    }
    String toString(){
        return login
    }
}
