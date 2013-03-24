package sisap
import br.edu.unime.util.Perfil

class Pessoa {
    static mapWith="mongo"

    String nome
    String matricula
    String email
    String cpf
    String rg
    String senha
    Integer perfilId
    String telefoneCelular
    Boolean status
    String getPerfil(){ return Perfil.getPerfilByKey(perfilId)}

    static transients = ['perfil']



    static constraints = {
        nome(nullable: false, blank: false)
        matricula(nullable: false, blank: false)
        email(nullable: false, blank: false)
        cpf(nullable: false, blank: false)
        senha(nullable: false, blank: false)
        perfilId(nullable: false, blank: false, inList: [1,2,3])
        status(nullable: false, blank: false)


    }
    String toString(){
        return nome +" - " + Perfil.getPerfilByKey(perfilId)
    }
}
