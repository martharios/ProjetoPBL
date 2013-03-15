package sisap

class Perfil {

    String sigla
    String descricao
    static constraints = {

    }
    static mapping = {
        version false
    }
    String toString(){
        return sigla + " - " + descricao
    }
}
