package sisap

class Pessoa {
    static mapWith="mongo"

    String nome
    String email
    Usuario usuario
    String telefoneCelular



    static hasMany = [perfis: Perfil]

    static constraints = {
        usuario (nullable: true)
    }
    String toString(){
        return nome +" - " + (perfis)
    }
}
