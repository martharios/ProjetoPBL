package br.edu.unime.util

import org.grails.cxf.utils.EndpointType
import org.grails.cxf.utils.GrailsCxfEndpoint

import javax.jws.WebMethod
import javax.jws.WebParam
import javax.jws.WebResult
import javax.jws.WebService

@WebService(name = 'SendMailService',
        targetNamespace = 'ws',
        serviceName = 'SendMailService',
        portName = 'SendMailServicePort')
class SendMailService {

    static expose = EndpointType.SIMPLE
    static soap12 = true

    static transactional = true

    @WebMethod(operationName = "calcula")
    @WebResult(name = "result")
    def Integer calcula(@WebParam(name = "numero1") Integer numero1, @WebParam(name = "numero2") Integer numero2){
        return (numero1 + numero2)
    }
    def String teste(){
        return "aaaa"
    }

}
