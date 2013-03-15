
<%@ page import="sisap.PeriodoDisciplina" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<div class="wrapper">

    <div class="content" id="container">
        <div class="title"><h5><g:message code="default.show.label" args="[entityName]" /></h5></div>
        <div class="breadCrumbHolder module">
            <div class="breadCrumb module">
                <ul>
                    <li class="firstB"><a href="#">Home</a> </li>
                    <li><g:link action="index"> <g:message code="default.list.label" args="[entityName]" /></g:link></li>
                    <li><g:link action="show" id="${periodoDisciplinaInstance.id}"> <g:message code="default.show.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
        </div>
        <g:hasErrors bean="${periodoDisciplinaInstance}">
            <div class="pt20">
                <ul class="errors" role="alert">
                    <g:eachError bean="${periodoDisciplinaInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                            <div class="nNote nFailure hideit">
                                <p><strong>Erro: </strong><g:message error="${error}"/></p>
                            </div>

                        </li>
                    </g:eachError>
                </ul>
            </div>
        </g:hasErrors>
        <g:if test="${flash.message}">
            <div class="pt20">
                <div class="nNote nSuccess hideit">
                    <p><strong>Sucesso: </strong>${flash.message}</p>
                </div>
            </div>
        </g:if>
        <div class="middleNav">
            <g:form method="POST" >
                <g:hiddenField name="id" value="${periodoDisciplinaInstance}" />
                <ul>
                    <li class="iEdit"><g:link id="${periodoDisciplinaInstance.id}" action="edit"><span><g:message code="default.edit.label" args="[entityName]" /></span></g:link> </li>
                    <li class="iDelete"><g:link  onclick="if(!(jConfirm('Tem certeza que deseja excluir este(a) ${message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina')}?', 'Confirmação')))return false;"><span><g:message code="default.button.delete.label" args="[entityName]" /></span></g:link></li>
                </ul>
            </g:form>
        </div>
        <div class="fix"></div>
        <div class="mainForm">
            <fieldset>
                <div class="widget first">
                    <div class="head"><h5 class="iList">Dados do teste</h5></div>
                    
                    <g:if test="${periodoDisciplinaInstance?.alunos}">
                        <div class="rowElem"><label><span id="alunos-label" class="property-label"><g:message code="periodoDisciplina.alunos.label" default="Alunos" /></span>:</label>
                            <div class="formRight">
                                

                                <g:each in="${periodoDisciplinaInstance.alunos}" var="a">
                                    <span class="property-value" aria-labelledby="alunos-label"><g:link controller="pessoa" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span> <div class="fix"></div>
                                </g:each>
                                
                            </div><div class="fix"></div></div>
                    </g:if>
                    
                    <g:if test="${periodoDisciplinaInstance?.atividadesPeriodo}">
                        <div class="rowElem"><label><span id="atividadesPeriodo-label" class="property-label"><g:message code="periodoDisciplina.atividadesPeriodo.label" default="Atividades Periodo" /></span>:</label>
                            <div class="formRight">
                                

                                <g:each in="${periodoDisciplinaInstance.atividadesPeriodo}" var="a">
                                    <span class="property-value" aria-labelledby="atividadesPeriodo-label"><g:link controller="atividadeAluno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span> <div class="fix"></div>
                                </g:each>
                                
                            </div><div class="fix"></div></div>
                    </g:if>
                    
                    <g:if test="${periodoDisciplinaInstance?.disciplina}">
                        <div class="rowElem"><label><span id="disciplina-label" class="property-label"><g:message code="periodoDisciplina.disciplina.label" default="Disciplina" /></span>:</label>
                            <div class="formRight">
                                

                                <span class="property-value" aria-labelledby="disciplina-label"><g:link controller="disciplina" action="show" id="${periodoDisciplinaInstance?.disciplina?.id}">${periodoDisciplinaInstance?.disciplina?.encodeAsHTML()}</g:link></span>
                                
                            </div><div class="fix"></div></div>
                    </g:if>
                    
                    <g:if test="${periodoDisciplinaInstance?.periodo}">
                        <div class="rowElem"><label><span id="periodo-label" class="property-label"><g:message code="periodoDisciplina.periodo.label" default="Periodo" /></span>:</label>
                            <div class="formRight">
                                
                                <span class="property-value" aria-labelledby="periodo-label"><g:textField readonly="readonly" name="${periodoDisciplinaInstance}" value="${periodoDisciplinaInstance.periodo}" /></span>
                                
                            </div><div class="fix"></div></div>
                    </g:if>
                    
                    <g:if test="${periodoDisciplinaInstance?.professor}">
                        <div class="rowElem"><label><span id="professor-label" class="property-label"><g:message code="periodoDisciplina.professor.label" default="Professor" /></span>:</label>
                            <div class="formRight">
                                

                                <span class="property-value" aria-labelledby="professor-label"><g:link controller="pessoa" action="show" id="${periodoDisciplinaInstance?.professor?.id}">${periodoDisciplinaInstance?.professor?.encodeAsHTML()}</g:link></span>
                                
                            </div><div class="fix"></div></div>
                    </g:if>
                    
                    <div class="fix"></div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="fix"></div>
</div>
</body>
</html>
