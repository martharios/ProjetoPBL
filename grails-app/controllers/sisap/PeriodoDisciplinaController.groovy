package sisap

import br.edu.unime.util.Perfil
import org.springframework.dao.DataIntegrityViolationException

class PeriodoDisciplinaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [periodoDisciplinaInstanceList: PeriodoDisciplina.list(params), periodoDisciplinaInstanceTotal: PeriodoDisciplina.count()]
    }
    def ajaxPesquisa(Integer max){
        params.max = Math.min(max ?: 10, 100)
        def professores = Pessoa.withCriteria(max: params.max, offset: params.offset) {
            maxResults(params.max)
            firstResult(params.offset ? params.offset.toInteger() : 0)
            if (params.nome){
                ilike('nome', "%$params.nome%")
            }
            if (params.matricula){
                ilike('matricula', "%$params.matricula%")
            }
            if (params.email){
                ilike('email', "%$params.email%")
            }
            eq('perfilId', Perfil.getPerfilByNome("professor"))
        }
        def professoresTotal = Pessoa.createCriteria().count(){
            if (params.nome){
                ilike('nome', "%$params.nome%")
            }
            if (params.matricula){
                ilike('matricula', "%$params.matricula%")
            }
            if (params.email){
                ilike('email', "%$params.email%")
            }
            eq('perfilId', Perfil.getPerfilByNome("professor"))
        }

       render(template: 'listProfessores', model: [professores: professores, professoresTotal: professoresTotal])
    }
    def passo1(Integer max){

        params.max = Math.min(max ?: 10, 100)
        def professores = Pessoa.withCriteria(max: params.max, offset: params.offset) {
            maxResults(params.max)
            firstResult(params.offset ? params.offset.toInteger() : 0)
            if (params.nome){
                ilike('nome', "%$params.nome%")
            }
            if (params.matricula){
                ilike('matricula', "%$params.matricula%")
            }
            eq('perfilId', Perfil.getPerfilByNome("professor"))
        }
        def professoresTotal = Pessoa.createCriteria().count(){
            if (params.nome){
                ilike('nome', "%$params.nome%")
            }
            if (params.matricula){
                ilike('matricula', "%$params.matricula%")
            }
            eq('perfilId', Perfil.getPerfilByNome("professor"))
        }

        render(view:  'passo1', model: [professores: professores, professoresTotal: professoresTotal, matricula: params.matricula, nome: params.nome, email: params.email])
        return
    }
    def passo2 = {
        def professor = Pessoa.read(params.professor)
        println professor.nome
        render(view: 'passo2')
        return
    }

    def create() {
        [periodoDisciplinaInstance: new PeriodoDisciplina(params)]
    }

    def save() {
        def periodoDisciplinaInstance = new PeriodoDisciplina(params)
        if (!periodoDisciplinaInstance.save(flush: true)) {
            render(view: "create", model: [periodoDisciplinaInstance: periodoDisciplinaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina'), periodoDisciplinaInstance.id])
        redirect(action: "show", id: periodoDisciplinaInstance.id)
    }

    def show(Long id) {
        def periodoDisciplinaInstance = PeriodoDisciplina.get(id)
        if (!periodoDisciplinaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina'), id])
            redirect(action: "list")
            return
        }

        [periodoDisciplinaInstance: periodoDisciplinaInstance]
    }

    def edit(Long id) {
        def periodoDisciplinaInstance = PeriodoDisciplina.get(id)
        if (!periodoDisciplinaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina'), id])
            redirect(action: "list")
            return
        }

        [periodoDisciplinaInstance: periodoDisciplinaInstance]
    }

    def update(Long id, Long version) {
        def periodoDisciplinaInstance = PeriodoDisciplina.get(id)
        if (!periodoDisciplinaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (periodoDisciplinaInstance.version > version) {
                periodoDisciplinaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina')] as Object[],
                        "Another user has updated this PeriodoDisciplina while you were editing")
                render(view: "edit", model: [periodoDisciplinaInstance: periodoDisciplinaInstance])
                return
            }
        }

        periodoDisciplinaInstance.properties = params

        if (!periodoDisciplinaInstance.save(flush: true)) {
            render(view: "edit", model: [periodoDisciplinaInstance: periodoDisciplinaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina'), periodoDisciplinaInstance.id])
        redirect(action: "show", id: periodoDisciplinaInstance.id)
    }

    def delete(Long id) {
        def periodoDisciplinaInstance = PeriodoDisciplina.get(id)
        if (!periodoDisciplinaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina'), id])
            redirect(action: "list")
            return
        }

        try {
            periodoDisciplinaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina'), id])
            redirect(action: "show", id: id)
        }
    }
}
