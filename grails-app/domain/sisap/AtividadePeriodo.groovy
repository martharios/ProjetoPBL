package sisap

class AtividadePeriodo {
    static mapWith="mongo"

    Date dataCriacao
    Date dataPrazo
    Atividade atividade
    static hasMany = [atividadesAluno: AtividadeAluno]
    static belongsTo = PeriodoDisciplina


    static constraints = {
    }
    String toString(){
    }
}
