<%@ page import="sisap.Perfil" %>



<div class="rowElem"><label for="descricao">
    <g:message code="perfil.descricao.label" default="Descricao" />
    
</label><div class="formRight">
    <div class="fieldcontain ${hasErrors(bean: perfilInstance, field: 'descricao', 'error')} ">

        <g:textField name="descricao" value="${perfilInstance?.descricao}"/>
    </div>
</div><div class="fix"></div></div>


<div class="rowElem"><label for="sigla">
    <g:message code="perfil.sigla.label" default="Sigla" />
    
</label><div class="formRight">
    <div class="fieldcontain ${hasErrors(bean: perfilInstance, field: 'sigla', 'error')} ">

        <g:textField name="sigla" value="${perfilInstance?.sigla}"/>
    </div>
</div><div class="fix"></div></div>


<div class="rowElem"><label for="usuarios">
    <g:message code="perfil.usuarios.label" default="Usuarios" />
    
</label><div class="formRight">
    <div class="fieldcontain ${hasErrors(bean: perfilInstance, field: 'usuarios', 'error')} ">

        
<ul class="one-to-many">
<g:each in="${perfilInstance?.usuarios?}" var="u">
    <li><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="usuario" action="create" params="['perfil.id': perfilInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'usuario.label', default: 'Usuario')])}</g:link>
</li>
</ul>

    </div>
</div><div class="fix"></div></div>


