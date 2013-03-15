package sisap

class MeuPerfilController {

    def index() {
        def pessoaInstance = Pessoa.findAllByUsuario(Usuario.findByLogin(session.login))
        render(view: 'index', model: [pessoaInstance: pessoaInstance])
    }
}
