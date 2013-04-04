
<%@ page import="sisap.Pessoa" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
     <g:javascript>

        function showHideAlterarSenha(){
            if(!($("#divAlterarSenha").is(":visible")))  {
                $("#divAlterarSenha").slideDown('slow');
                $("#alterarSenha").text("Cancelar");
            }else{
                $("#divAlterarSenha").slideUp('slow');
                $("#alterarSenha").text("Alterar Senha");
            }
        }

     </g:javascript>
</head>
<body>
<div class="wrapper">

    <div class="content" id="container">
        <div class="title"><h5>Meu Perfil</h5></div>
        <div class="breadCrumbHolder module">
            <div class="breadCrumb module">
                <ul>
                    <li class="firstB"><a href="#">Home</a> </li>
                    <li><g:link action="index"> Meu Perfil</g:link></li>
                </ul>
            </div>
        </div>
        <g:hasErrors bean="${pessoaInstance}">
            <div class="pt20">
                <ul class="errors" role="alert">
                    <g:eachError bean="${pessoaInstance}" var="error">
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
        <div class="fix"></div>
        <div class="mainForm">
            <fieldset>
                <div class="widget first">
                    <div class="head"><h5 class="iList">Minhas informações</h5></div>

                    <g:if test="${pessoaInstance?.nome}">
                        <div class="rowElem"><label><span id="nome-label" class="property-label"><g:message code="pessoa.nome.label" default="Nome" /></span>:</label>
                            <div class="formRight">

                                <span class="property-value" aria-labelledby="nome-label"><g:textField readonly="readonly" name="${pessoaInstance}" value="${pessoaInstance.nome}" /></span>

                            </div><div class="fix"></div></div>
                    </g:if>
                    <g:if test="${pessoaInstance?.matricula}">
                        <div class="rowElem"><label><span id="email-label" class="property-label"><g:message code="pessoa.matricula.label" default="Matrícula" /></span>:</label>
                            <div class="formRight">

                                <span class="property-value" aria-labelledby="email-label"><g:textField readonly="readonly" name="${pessoaInstance}" value="${pessoaInstance.matricula}" /></span>

                            </div><div class="fix"></div></div>
                    </g:if>

                    <g:if test="${pessoaInstance?.rg}">
                        <div class="rowElem"><label><span id="telefoneCelular-label" class="property-label"><g:message code="pessoa.rg.label" default="RG" /></span>:</label>
                            <div class="formRight">

                                <span class="property-value" aria-labelledby="telefoneCelular-label"><g:textField readonly="readonly" name="${pessoaInstance}" value="${pessoaInstance.rg}" /></span>

                            </div><div class="fix"></div></div>
                    </g:if>
                    <g:if test="${pessoaInstance?.cpf}">
                        <div class="rowElem"><label><span id="telefoneCelular-label" class="property-label"><g:message code="pessoa.cpf.label" default="CPF" /></span>:</label>
                            <div class="formRight">

                                <span class="property-value" aria-labelledby="telefoneCelular-label"><g:textField readonly="readonly" name="${pessoaInstance}" value="${pessoaInstance.cpf}" /></span>

                            </div><div class="fix"></div></div>
                    </g:if>

                    <g:if test="${pessoaInstance?.email}">
                        <div class="rowElem"><label><span id="email-label" class="property-label"><g:message code="pessoa.email.label" default="Email" /></span>:</label>
                            <div class="formRight">

                                <span class="property-value" aria-labelledby="email-label"><g:textField readonly="readonly" name="${pessoaInstance}" value="${pessoaInstance.email}" /></span>

                            </div><div class="fix"></div></div>
                    </g:if>
                    <g:if test="${pessoaInstance?.perfilId}">
                        <div class="rowElem"><label><span id="email-label" class="property-label"><g:message code="pessoa.perfil.label" default="Perfil" /></span>:</label>
                            <div class="formRight">

                                <span class="property-value" aria-labelledby="email-label"><g:textField readonly="readonly" name="${pessoaInstance}" value="${pessoaInstance.perfil}" /></span>

                            </div><div class="fix"></div></div>
                    </g:if>
                    <g:if test="${pessoaInstance?.curso}">
                        <div class="rowElem"><label><span id="email-label" class="property-label"><g:message code="pessoa.curso.label" default="Curso" /></span>:</label>
                            <div class="formRight">

                                <span class="property-value" aria-labelledby="email-label"><g:textField readonly="readonly" name="${pessoaInstance}" value="${pessoaInstance.curso}" /></span>

                            </div><div class="fix"></div></div>
                    </g:if>


                    <g:if test="${pessoaInstance?.telefoneCelular}">
                        <div class="rowElem"><label><span id="telefoneCelular-label" class="property-label"><g:message code="pessoa.telefoneCelular.label" default="Telefone Celular" /></span>:</label>
                            <div class="formRight">

                                <span class="property-value" aria-labelledby="telefoneCelular-label"><g:textField readonly="readonly" name="${pessoaInstance}" value="${pessoaInstance.telefoneCelular}" /></span>

                            </div><div class="fix"></div></div>
                    </g:if>



                    <div class="rowElem"><label><span  class="property-label">
                        <g:remoteLink action="ajaxAlterarSenha" id="${pessoaInstance?.id}" update="divAlterarSenha">
                            <button id="alterarSenha" onclick="showHideAlterarSenha();" class="greyishBtn">Alterar Senha</button>
                        </g:remoteLink>
                        </span></label>
                        <div class="formRight">
                        <div id="divAlterarSenha" style="display: none;"></div>


                        </div><div class="fix"></div></div>

                    <div class="fix"></div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="fix"></div>
</div>
</body>
</html>
