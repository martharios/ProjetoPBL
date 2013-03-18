package sisap

class Perfil {

    static mapWith="mongo"

    String sigla
    String descricao
    static constraints = {
      sigla(nullable: false)
      descricao(nullable: false)
    }

    String toString(){
        return sigla + " - " + descricao
    }
}
