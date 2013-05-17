package br.edu.unime.util

import org.codehaus.groovy.grails.commons.DefaultGrailsDomainClass
import sisap.Disciplina
import org.codehaus.groovy.grails.web.metaclass.BindDynamicMethod

class CrudClientService {
    def soapClient
    def bind = new BindDynamicMethod()

    def findDisciplinasByParams(Integer max, Integer offset) throws Exception {
        def response
        try {
            //Associando a URL do webservice ao objeto cliente soapClient
            soapClient.serviceURL = "http://localhost:8080/SISAP/services/crud?wsdl"

            //Definindo um retorno à resposta enviada ao WEBSERVICE
            response = soapClient.send() {
                //Atributos do webservice
                soapNamespacePrefix "soap"
                envelopeAttributes "xmlns:util":"http://util.unime.edu.br/"
                //Corpo da mensagem enviada ao WEBSERVICE
                body {
                    //Método do webservice a fazer a chamada
                    retrieveDisciplinas("xmlns:util":"http://util.unime.edu.br/"){

                        mkp.yieldUnescaped "<max>$max</max>"
                        mkp.yieldUnescaped "<offset>$offset</offset>"
                    }
                }
            }
        } catch (Exception exception) {
            log.error(exception.message)
            throw exception
        }
        def disciplinaList = []
        def disciplina = [:]

        def disciplinaTest = new Disciplina()
        def domainReference = new DefaultGrailsDomainClass(Disciplina.class).persistentProperties

        response.body.retrieveDisciplinasResponse.return.each {
            disciplina = [:]
            disciplina  = bindParams(disciplina, domainReference,it)
            disciplinaList << disciplina

        }

        return disciplinaList

    }
    def countDisciplinasByParams() throws Exception {
        def response
        try {
            //Associando a URL do webservice ao objeto cliente soapClient
            soapClient.serviceURL = "http://localhost:8080/SISAP/services/crud?wsdl"

            //Definindo um retorno à resposta enviada ao WEBSERVICE
            response = soapClient.send() {
                //Atributos do webservice
                soapNamespacePrefix "soap"
                envelopeAttributes "xmlns:util":"http://util.unime.edu.br/"
                //Corpo da mensagem enviada ao WEBSERVICE
                body {
                    //Método do webservice a fazer a chamada
                    countDisciplinas("xmlns:util":"http://util.unime.edu.br/") {}
                }
            }
        } catch (Exception exception) {
            log.error(exception.message)
            throw exception
        }

        return response.body.countDisciplinasResponse.return

    }

    def private bindParams(object, domainReference, param){
        domainReference.each{
            object.putAt(it.name, param.getAt(it.name))
        }
        return object
    }
}
