package sisap

class Atividade {
    static mapWith="mongo"

    String nome
    String descricao

    static constraints = {
    }
    String toString(){
        return id.toString() + nome
    }
}
