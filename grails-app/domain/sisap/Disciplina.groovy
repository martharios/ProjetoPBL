package sisap

class Disciplina {
    static mapWith="mongo"

    String nome
    String descricao

    static constraints = {
    }
    String toString(){
        return nome
    }
}
