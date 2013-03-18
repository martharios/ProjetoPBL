package sisap

class PeriodoDisciplina {
    static mapWith="mongo"

    String periodo
    Pessoa professor
    Disciplina disciplina

    static hasMany = [alunos: Pessoa, atividadesPeriodo: AtividadeAluno]


    static constraints = {
    }
}
