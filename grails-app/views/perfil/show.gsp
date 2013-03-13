<%@ page import="sisap.Usuario" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>
<div class="wrapper">

    <div class="content" id="container">
        <div class="title"><h5>Mostrar Usuário</h5></div>
        <div class="breadCrumbHolder module">
            <div class="breadCrumb module">
                <ul>
                    <li class="firstB"><a href="#">Home</a> </li>
                    <li><g:link action="index"> Usuários</g:link></li>
                    <li><g:link action="show" id="${usuarioInstance?.id}">Mostrar Usuários</g:link></li>
                </ul>
            </div>
        </div>
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
        <g:if test="${flash.message}">
            <div class="pt20">
                <div class="nNote nSuccess hideit">
                    <p><strong>Sucesso: </strong>${flash.message}</p>
                </div>
            </div>
        </g:if>
        <div class="middleNav">
            <g:form method="POST" >
                <g:hiddenField name="id" value="${usuarioInstance?.id}" />
            <ul>
                <li class="iMes"><g:link controller="usuario" id="${usuarioInstance?.id}" action="edit"><span>Editar Usuário</span></g:link> </li>
                <li class="iMes"><g:submitButton name="btnDelete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"  controller="usuario" id="${usuarioInstance?.id}" action="delete"><span>Excluir Usuário</span></g:submitButton> </li>
                <li class="iMes"></li>
                <li class="iMes"><g:link controller="usuario" id="${usuarioInstance?.id}" action="edit"><span><g:submitButton name="btnDelete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" value="Teste"  controller="usuario" id="${usuarioInstance?.id}" action="delete" /></span></g:link> </li>

                %{--<li class="iMes"><span<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"  /></span></li>--}%
            </ul>
            </g:form>
        </div>
        <div class="fix"></div>
        <div class="mainForm">
        <fieldset>
                <div class="widget first">
                    <div class="head"><h5 class="iList">Dados do usuário</h5></div>
                    <div class="rowElem"><label>Nome:</label><div class="formRight"><input type="text" value="${usuarioInstance?.nome}" readonly="readonly" name="inputtext"/></div><div class="fix"></div></div>
                    <div class="rowElem"><label>Login:</label><div class="formRight"><input type="text" value="${usuarioInstance?.login}" readonly="readonly" name="inputtext"/></div><div class="fix"></div></div>
                    %{--<input type="submit" value="Cadastrar" class="greyishBtn submitForm" />--}%
                    <div class="fix"></div>

                </div>
            </fieldset>
        </div>


    </div>

    <div class="fix"></div>
</div>
</body>
</html>
