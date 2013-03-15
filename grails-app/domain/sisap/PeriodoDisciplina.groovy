package sisap

class PeriodoDisciplina {

    String periodo
    Pessoa professor
    Disciplina disciplina

    static hasMany = [alunos: Pessoa, atividadesPeriodo: AtividadeAluno]


    static constraints = {
    }
}
