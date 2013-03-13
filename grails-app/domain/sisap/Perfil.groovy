package sisap

class Perfil {

    String sigla
    String descricao

    static hasMany = [usuarios: Usuario]

    static constraints = {

    }
    static mapping = {
        version false
    }
    String toString(){
        return sigla + " - " + descricao
    }
}
