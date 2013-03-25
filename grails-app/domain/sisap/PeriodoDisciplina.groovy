package sisap

class PeriodoDisciplina {
    static mapWith="mongo"

    Integer ano
    Integer semestre
    String getPeriodo() {return ano + "." + semestre}
    Pessoa professor
    Disciplina disciplina

    static transients = ['periodo']

    static hasMany = [alunos: Pessoa, atividadesPeriodo: AtividadeAluno]


    static constraints = {
    }

}
