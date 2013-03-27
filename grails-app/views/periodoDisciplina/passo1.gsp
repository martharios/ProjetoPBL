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
    function professorAttr(obj){
        $("#hiddenProfessorNome").val($("#tdNomeProfessor"+$(obj).val()).text());
        $("#hiddenProfessor").val($(obj).val())
    }
    function disciplinaAttr(obj){
        $("#hiddenDisciplinaNome").val($("#tdNomeDisciplina"+$(obj).val()).text());
        $("#hiddenDisciplina").val($(obj).val())
    }
    </g:javascript>
</head>
<body>
<div class="wrapper">
<div class="content">
<div class="title"><h5>Cadastrar Disciplina em Período</h5></div>

    <g:form id="nextPasso2" name="nextPasso2" action="save" class="mainForm">
    <fieldset class="form" >
        <div class="widget first">
            <div class="head"><h5 class="iList">Período</h5></div>

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
        <div class="rowElem"><label for="semestre">
                Professor
            </label><div class="formRight">
                <div class="fieldcontain ${hasErrors(bean: periodoDisciplinaInstance, field: 'professor', 'error')} ">

                    %{--<g:textField name="professorNome" value="${periodoDisciplinaInstance?.semestre}"/>--}%
                    <div id="divProfessor">
                        <g:textField name="professorNome" id="professorNome" readonly="readonly" />
                        <a href="#" id="teste" onclick="${remoteFunction(action: 'ajaxPesquisaProfessor', update: 'professorDialog')};$('#professorDialog').dialog({'minWidth': '750', 'position': 'center top'});"><img src="${createLinkTo(dir: 'images/icons/dark', file: 'add.png')}"></a>
                    </div>

                    <div id="professorDialog" title="Selecionar Professor" style="display: none;"></div>
                </div>
            <g:hiddenField name="professor" id="professor" value="" />
            </div><div class="fix"></div></div>
        <div class="rowElem"><label>
                Disciplina
            </label><div class="formRight">
                <div class="fieldcontain ${hasErrors(bean: periodoDisciplinaInstance, field: 'disciplina', 'error')} ">

                    %{--<g:textField name="professorNome" value="${periodoDisciplinaInstance?.semestre}"/>--}%
                    <div id="divDisciplina">
                        <g:textField name="disciplinaNome" id="disciplinaNome" readonly="readonly" />
                        <a href="#" id="teste" onclick="${remoteFunction(action: 'ajaxPesquisaDisciplina', update: 'disciplinaDialog')};$('#disciplinaDialog').dialog({'minWidth': '750', 'position': 'center top'});"><img src="${createLinkTo(dir: 'images/icons/dark', file: 'add.png')}"></a>
                    </div>

                    <div id="disciplinaDialog" title="Selecionar Disciplina" style="display: none;"></div>
                </div>
            <g:hiddenField name="disciplina" id="disciplina" value="" />
            </div><div class="fix"></div></div>

      </g:form>
    <div class="fix"></div>
    <div class="rowElem"><button class="greyishBtn" onclick="$('form#nextPasso2').submit();">Prosseguir</button></div>

        </div>
    </fieldset>



</div>
<div class="fix"></div>
</div>
</body>
</html>
