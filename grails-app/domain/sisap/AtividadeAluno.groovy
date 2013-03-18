package sisap

class AtividadeAluno {
    static mapWith="mongo"

    Pessoa aluno
    Float nota
    Date dataEntrega


    static belongsTo = [atividadePeriodo: AtividadePeriodo]


    static constraints = {
    }
    String toString(){
        aluno.toString()
    }
}
