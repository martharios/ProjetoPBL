package sisap

class Mensagem {

    static mapWith="mongo"

    String titulo
    String mensagem

    static hasMany = [destinatarios: Pessoa]

    static constraints = {
        titulo(blank: false)
        destinatarios(blank: false)
        mensagem(maxSize: 300)
    }
}
