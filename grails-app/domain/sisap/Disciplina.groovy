package sisap

class Disciplina {
    static mapWith="mongo"

    String codigo
    String nome
    String descricao

    static constraints = {
    }
    String toString(){
        return nome
    }
}
