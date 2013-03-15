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


