<%@ page import="sisap.Teste" %>



<div class="rowElem"><label for="descricao">
    <g:message code="teste.descricao.label" default="Descricao" />
    
</label><div class="formRight">
    <div class="fieldcontain ${hasErrors(bean: testeInstance, field: 'descricao', 'error')} ">

        <g:textField name="descricao" value="${testeInstance?.descricao}"/>
    </div>
</div><div class="fix"></div></div>


<div class="rowElem"><label for="usuario">
    <g:message code="teste.usuario.label" default="Usuario" />
    <span class="required-indicator">*</span>
</label><div class="formRight">
    <div class="fieldcontain ${hasErrors(bean: testeInstance, field: 'usuario', 'error')} required">

        <g:select id="usuario" name="usuario.id" from="${sisap.Usuario.list()}" optionKey="id" required="" value="${testeInstance?.usuario?.id}" class="many-to-one"/>
    </div>
</div><div class="fix"></div></div>


