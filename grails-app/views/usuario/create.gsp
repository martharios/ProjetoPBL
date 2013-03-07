<%@ page import="sisap.Usuario" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>
<div class="wrapper">

<div class="content" id="container">
<div class="title"><h5>Cadastrar Usuário</h5></div>
    <g:hasErrors bean="${usuarioInstance}">
        <div class="pt20">

        <ul class="errors" role="alert">
            <g:eachError bean="${usuarioInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                    <div class="nNote nFailure hideit">
                        <p><strong>Erro: </strong><g:message error="${error}"/> </p>
                    </div>
                </li>
            </g:eachError>
        </ul>
        </div>
    </g:hasErrors>
<g:form action="save" class="mainForm">
<fieldset>
    <div class="widget first">
        <div class="head"><h5 class="iList">Preencha os campos abaixo</h5></div>
        <div class="rowElem noborder"><label>Nome:</label><div class="formRight"><input type="text" name="nome"/></div><div class="fix"></div></div>
        <div class="rowElem"><label>Login:</label><div class="formRight"><input type="text" name="login"/></div><div class="fix"></div></div>
        <div class="rowElem"><label>Senha:</label><div class="formRight"><input name="senha" type="password" /></div><div class="fix"></div></div>
        <input type="submit" value="Cadastrar" class="greyishBtn submitForm" />
        <div class="fix"></div>

    </div>
</fieldset>
</g:form>


</div>

<div class="fix"></div>
</div>
</body>
</html>
