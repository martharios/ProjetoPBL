package br.edu.unime.util

import org.grails.cxf.utils.EndpointType
import sisap.Disciplina

import javax.jws.WebMethod
import javax.jws.WebParam
import javax.jws.WebResult
import javax.jws.WebService

@WebService(name = 'CrudService',
        targetNamespace = 'ws',
        serviceName = 'CrudService',
        portName = 'CRUDServicePort')
class CrudService {

    static expose = EndpointType.SIMPLE
    static soap12 = true

    static transactional = true

    @WebMethod(operationName = "retrieveDisciplinas")
    @WebResult(name = "result")
    def Disciplina[] retrieveDisciplinas(@WebParam(name = "max") Integer max,@WebParam(name = "offset") Integer offset,@WebParam(name = "codigo") String codigo,@WebParam(name = "nome") String nome,@WebParam(name = "descricao") String descricao) {

        try{
            return Disciplina.withCriteria {
                maxResults(max?.toInteger())
                firstResult(offset?.toInteger())
                if (codigo){
                    ilike("codigo", "%$codigo%")
                }
                if (nome){
                    ilike("nome", "%$nome%")
                }
                if (descricao){
                    ilike("descricao", "%$descricao%")
                }
            }
        }catch (e){
            println e.getMessage()
        }
    }
    @WebMethod(operationName = "countDisciplinas")
    @WebResult(name = "result")
    def Integer countDisciplinas(@WebParam(name = "codigo") String codigo,@WebParam(name = "nome") String nome,@WebParam(name = "descricao") String descricao) {

        try{
            return Disciplina.createCriteria().count() {
                 //TODO
            }
        }catch (e){
            println e.getMessage()
        }
    }
}
