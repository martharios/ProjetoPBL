
<%@ page import="sisap.Pessoa; sisap.PeriodoDisciplina" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>


    <script type="text/javascript" src="${createLinkTo(dir: 'js/charts', file: 'pie.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/charts', file: 'bar.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/charts', file: 'auto.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/charts', file: 'hBar.js')}"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js/charts', file:  'chart.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/plugins/flot', file:  'jquery.flot.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/plugins/flot', file:  'jquery.flot.orderBars.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/plugins/flot', file:  'jquery.flot.pie.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/plugins/flot', file:  'excanvas.min.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/plugins/flot', file:  'jquery.flot.resize.js')}"></script>



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
            <g:form name="formShow" method="POST"  action="delete">
                <g:hiddenField name="id" value="${periodoDisciplinaInstance.id}" />
                <ul>
                    <li class="iEdit"><g:link id="${periodoDisciplinaInstance.id}" action="edit"><span><g:message code="default.edit.label" args="[entityName]" /></span></g:link> </li>
                    <li class="iDelete"><a href="#" onclick="jConfirm('Tem certeza que deseja excluir este(a) ${message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina')}?', 'Confirmação', function(e){if(e){$('form#formShow').submit();}});"><span><g:message code="default.button.delete.label" args="[entityName]" /></span></a></li>
                </ul>
            </g:form>
        </div>
        <div class="fix"></div>
        <div class="mainForm">
            <fieldset>
                <div class="widget first">
                    <div class="head"><h5 class="iList">Dados da Disciplina Associada a ${periodoDisciplinaInstance?.periodo}</h5></div>
                    <g:if test="${periodoDisciplinaInstance?.ano}">
                        <div class="rowElem"><label><span id="ano-label" class="property-label">Período</span>:</label>
                            <div class="formRight">

                                %{--<span class="property-value" aria-labelledby="ano-label"><g:textField readonly="readonly" name="${periodoDisciplinaInstance}" value="${periodoDisciplinaInstance.ano}" /></span>--}%
                                <h1 class="red pt10">${periodoDisciplinaInstance?.periodo}</h1>
                            </div><div class="fix"></div></div>
                    </g:if>

                    <g:if test="${periodoDisciplinaInstance?.autorCadastro}">
                        <div class="rowElem"><label><span id="alunos-label" class="property-label">Autor do Cadastro</span>:</label>
                            <div class="formRight">
                                

                                    <span class="property-value" aria-labelledby="alunos-label"><g:link controller="pessoa" action="show" id="${periodoDisciplinaInstance?.autorCadastro?.id}">${periodoDisciplinaInstance?.autorCadastro?.encodeAsHTML()}</g:link></span> <div class="fix"></div>

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
                    
                    <g:if test="${periodoDisciplinaInstance?.professor}">
                        <div class="rowElem"><label><span id="professor-label" class="property-label"><g:message code="periodoDisciplina.professor.label" default="Professor" /></span>:</label>
                            <div class="formRight">
                                

                                <span class="property-value" aria-labelledby="professor-label"><g:link controller="pessoa" action="show" id="${periodoDisciplinaInstance?.professor?.id}">${periodoDisciplinaInstance?.professor?.encodeAsHTML()}</g:link></span>
                                
                            </div><div class="fix"></div></div>
                    </g:if>

                    <div class="rowElem">
                        <h4 class="red pt10">Detalhes</h4>
                        <div class="widget">
                            <ul class="tabs">
                                <li><a href="#tab3">Alunos</a></li>
                                <li><a href="#tab4">Atividades</a></li>
                                <li><a href="#tab5">Estatísticas</a></li>
                            </ul>

                            <div class="tab_container">
                                <div id="tab3" class="tab_content">
                                    <h4 class="aligncenter red pt10">Alunos Associados a esta disciplina em ${periodoDisciplinaInstance.periodo}</h4>
                                    <g:if test="${periodoDisciplinaInstance?.alunos}">

                                            <div class="formRight" style="width: 100%;">

                                                <div class="table">
                                                    <div class="head"><h5 class="iFrames">Alunos: ${periodoDisciplinaInstance.alunos.size()}</h5></div>
                                                    <table cellpadding="0" cellspacing="0" width="100%" class="tableStatic resize">
                                                        <thead>
                                                        <td>Nome</td>
                                                        <td>Email</td>
                                                        </thead>
                                                        <tbody>
                                                        <g:each in="${periodoDisciplinaInstance.alunos}" var="a" status="i">
                                                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                                                <td><g:link controller="pessoa" action="show" id="${a.id}">${a.nome}</g:link> </td>
                                                                <td>${a?.email}</td>
                                                            </tr>

                                                        </g:each>
                                                        </tbody>
                                                    </table>
                                                </div>

                                            </div><div class="fix"></div>
                                    </g:if>
                                </div>
                                <div id="tab4" class="tab_content">

                                    <button id="btnCreateAtividade" class="greyishBtn" onclick="$('#divCreateAtividade').slideDown('slow');$('#btnCreateAtividade').slideUp('slow');">Adicionar Atividade</button>
                                    <div id="divCreateAtividade" style="display: none;">
                                        <g:render template="createAtividade" />
                                    </div>
                                </div>
                                <div id="tab5" class="tab_content">
                                    <div class="widgets">



                                            <div class="widget"><!-- Pie chart 2 -->
                                                <div class="head"><h5 class="iChart8">Gráficos</h5></div>
                                                <div class="body">
                                                    <div id="pie" class="pieWidget"></div>
                                                </div>
                                            </div>

                                        <div class="fix"></div>
                                    </div>
                                </div>

                            </div>
                            <div class="fix"></div>
                        </div>
                    </div>

                    <div class="fix"></div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="fix"></div>
</div>
</body>
</html>
