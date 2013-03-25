package sisap

class Curso {
    static mapWith="mongo"

    String codigo
    String nome
    String descricao

    static constraints = {
        codigo(nullable: false,blank: false)
        nome(nullable: false,blank: false)
        descricao(nullable: false,blank: false)
    }

    String toString(){
        return nome
    }
}