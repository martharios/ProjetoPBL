<%@ page import="sisap.PeriodoDisciplina" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
    <g:javascript>
    function pesquisa(){
        var matriculaValue = $("#matricula").val();
        var nomeValue = $("#nome").val();
        var emailValue = $("#email").val();
        ${remoteFunction(action: 'ajaxPesquisa', update: "tabelaProfessores", params: "'matricula=' + matriculaValue + '&nome=' + nomeValue + '&email=' + emailValue")}
    }
    </g:javascript>
</head>
<body>
<div class="wrapper">
<div class="content">
<div class="title"><h5>Cadastrar Disciplina em Período</h5></div>

<div class="table">
<div class="head"><h5 class="iFrames">Dynamic table</h5></div>
<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
<thead>
<tr>
    <th>Código</th>
    <th>Nome</th>
    <th>Descrição</th>

</tr>
</thead>
<tbody>
<g:each in="${sisap.Disciplina.list()}" var="d">
    <tr class="gradeA">
        <td>${d?.codigo}</td>
        <td>${d?.nome}</td>
        <td>${d?.descricao}</td>
    </tr>
</g:each>
</tbody>
</table>
</div>
    <g:form action="passo2" class="mainForm">
    <fieldset class="form" >
        <div class="widget first">
            <div class="head"><h5 class="iList">Preencha os campos abaixo</h5></div>

             <div class="rowElem"><label for="ano">
                <g:message code="periodoDisciplina.ano.label" default="Ano" />

            </label><div class="formRight">
                <div class="fieldcontain ${hasErrors(bean: periodoDisciplinaInstance, field: 'ano', 'error')} ">

                    <g:textField name="ano" value="${periodoDisciplinaInstance?.ano}"/>
                </div>
            </div><div class="fix"></div></div>

            <div class="rowElem"><label for="semestre">
                <g:message code="periodoDisciplina.semestre.label" default="Semestre" />

            </label><div class="formRight">
                <div class="fieldcontain ${hasErrors(bean: periodoDisciplinaInstance, field: 'semestre', 'error')} ">

                    <g:textField name="semestre" value="${periodoDisciplinaInstance?.semestre}"/>
                </div>
            </div><div class="fix"></div></div>

            <div class="rowElem"><label for="disciplina">
                <g:message code="periodoDisciplina.disciplina.label" default="Disciplina" />
                <span class="required-indicator">*</span>
            </label><div class="formRight">
                <div class="fieldcontain ${hasErrors(bean: periodoDisciplinaInstance, field: 'disciplina', 'error')} required">

                    <g:select id="disciplina" name="disciplina.id"  from="${sisap.Disciplina.list()}" optionKey="id" required="" value="${periodoDisciplinaInstance?.disciplina?.id}" />
                </div>
            </div><div class="fix"></div></div>




            <g:submitButton name="create" class="greyishBtn submitForm" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            <div class="fix"></div>
        </div>
    </fieldset>
       <g:form action="passo1"  class="mainForm">
           <fieldset>
               <div class="widget">
                   <div class="head"><h5 class="iView">Buscar Professor</h5></div>
                   <div class="floatleft twoOne">
                       <div class="rowElem noborder pb0"><label class="topLabel">Nome:</label><div class="formBottom"><g:textField name="nome" value="${params?.nome}" /></div><div class="fix"></div></div>


                   </div>
                   <div class="floatright twoOne">
                       <div class="rowElem noborder pb0"><label class="topLabel">Matrícula:</label><div class="formBottom"><g:textField name="matricula" value="${params?.matricula}" /></div><div class="fix"></div></div>
                       <div class="rowElem noborder pb0" style="float: right;"><div class="formBottom"><button id="btnBuscar"></button>  <g:submitButton name="teste" class="greyishBtn" value="Buscar"  /></div><div class="fix"></div></div>

                   </div>

                   <div class="fix"></div>
               </div>
           </fieldset>


       </g:form>
<div id="tabelaProfessores">
    <div class="table">
        <div class="head"><h5 class="iFrames">Professor da Disciplina</h5></div>


        <table cellpadding="0" cellspacing="0" width="100%" class="tableStatic resize">
            <thead class="head">
            <tr>
                <td width="10%">Selecione</td>
                <td width="20%">Matrícula</td>
                <td>Nome</td>
                <td>Email</td>
            </tr>
            </thead>
            <tbody>
            <g:each in="${professores}" var="professor" status="i">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <td width="10%"><div class="rowElem"><input type="radio" value="${professor.id}"  name="professor"  /></div></td>
                    <td width="20%">${professor?.matricula}</td>
                    <td>${professor?.nome}</td>
                    <td>${professor?.email}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    <div class="pagination">
        <ul class="pages">
            <g:paginateCustom total="${professoresTotal}" params="${params}" />
        </ul>
    </div>
</div>


   </g:form>
</div>
<div class="fix"></div>
</div>
</body>
</html>
