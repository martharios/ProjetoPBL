<%@ page import="sisap.Usuario" %>



<div class="rowElem"><label for="nome">
    <g:message code="usuario.nome.label" default="Nome" />
    <span class="required-indicator">*</span>
</label><div class="formRight">
    <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nome', 'error')} required">

        <g:textField name="nome" required="" value="${usuarioInstance?.nome}"/>
    </div>
</div><div class="fix"></div></div>


<div class="rowElem"><label for="login">
    <g:message code="usuario.login.label" default="Login" />
    <span class="required-indicator">*</span>
</label><div class="formRight">
    <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'login', 'error')} required">

        <g:textField name="login" required="" value="${usuarioInstance?.login}"/>
    </div>
</div><div class="fix"></div></div>


<div class="rowElem"><label for="senha">
    <g:message code="usuario.senha.label" default="Senha" />
    <span class="required-indicator">*</span>
</label><div class="formRight">
    <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">

        <g:textField name="senha" required="" value="${usuarioInstance?.senha}"/>
    </div>
</div><div class="fix"></div></div>


<div class="rowElem"><label for="email">
    <g:message code="usuario.email.label" default="Email" />
    
</label><div class="formRight">
    <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} ">

        <g:textField name="email" value="${usuarioInstance?.email}"/>
    </div>
</div><div class="fix"></div></div>


<div class="rowElem"><label for="perfil">
    <g:message code="usuario.perfil.label" default="Perfil" />
    <span class="required-indicator">*</span>
</label><div class="formRight">
    <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'perfil', 'error')} required">

        <g:select id="perfil" name="perfil.id" from="${sisap.Perfil.list()}" optionKey="id" required="" value="${usuarioInstance?.perfil?.id}" class="many-to-one"/>
    </div>
</div><div class="fix"></div></div>


