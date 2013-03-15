package sisap

class AtividadeAluno {

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
