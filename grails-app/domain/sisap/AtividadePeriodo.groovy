package sisap

class AtividadePeriodo {

    Date dataCriacao
    Date dataPrazo
    Atividade atividade
    String periodo
    static hasMany = [atividadesAluno: AtividadeAluno]

    static constraints = {
    }
    String toString(){
        return  periodo +  " - " +atividade.toString()
    }
}
