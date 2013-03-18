
<%@ page import="sisap.Perfil" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'perfil.label', default: 'Perfil')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="content">
        <div class="title"><h5><g:message code="default.list.label" args="[entityName]" /></h5></div>
        <div class="breadCrumbHolder module">
            <div class="breadCrumb module">
                <ul>
                    <li class="firstB"><a href="#">Home</a> </li>
                    <li><g:link action="index"> <g:message code="default.list.label" args="[entityName]" /></g:link></li>

                </ul>
            </div>
        </div>

			<g:if test="${flash.message}">
                <div class="pt20">
                    <div class="nNote nSuccess hideit">
                        <p><strong>Sucesso: </strong>${flash.message}</p>
                    </div>
                </div>
			</g:if>
        %{--<div class="middleNav">--}%
            %{--<ul>--}%
                %{--<li class="iPlus"><g:link action="create"><span>Adicionar ${message(code: 'perfil.label', default: 'Perfil')}</span></g:link> </li>--}%
                %{--<li class="iStat"><a href="#" title=""><span>Buscar usuário</span></a></li>--}%
                %{--<li class="iUser"><a href="#" title=""><span>User list</span></a></li>--}%
                %{--<li class="iOrders"><a href="#" title=""><span>Billing panel</span></a></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        <div class="fix"></div>
        <div class="table">
            <div class="head"><h5 class="iFrames">Listagem de <g:message code="default.list.label" args="[entityName]" />: ${perfilInstanceTotal}</h5></div>
            <g:form name="formShow" method="POST"  action="delete">
            <g:hiddenField id="id" name="id" value=""/>
            <table cellpadding="0" cellspacing="0" width="100%" class="tableStatic resize">
				<thead>
					<tr>
					
                        <td>${message(code: 'perfil.descricao.label', default: 'Descricao')}</td>


                        <td>${message(code: 'perfil.sigla.label', default: 'Sigla')}</td>

                        <td width="10%">Editar</td>
                        <td width="10%">Excluir</td>
                    </tr>
				</thead>
				<tbody>
				<g:each in="${perfilInstanceList}" status="i" var="perfilInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${perfilInstance.id}">${fieldValue(bean: perfilInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: perfilInstance, field: "sigla")}</td>
                        <td align="center"><g:link action="edit" id="${perfilInstance.id}"><img src="${createLinkTo(dir: 'images/icons/middlenav', file: 'pencil.png')}" style="width: 15px;height: 15px;" /></g:link></td>
                        <td align="center"><div id="auxDiv${perfilInstance.id}"></div><a href="#auxDiv${perfilInstance.id}" onclick="jConfirm('Tem certeza que deseja excluir este(a) ${message(code: 'perfil.label', default: 'Perfil')}?', 'Confirmação', function(e){if(e){$('#id').val('${perfilInstance.id}');$('form#formShow').submit();$('#id').val('')}});"><img src="${createLinkTo(dir: 'images/icons/middlenav', file: 'trash.png')}" style="width: 15px;height: 15px;" /></a></td>
					</tr>
				</g:each>
				</tbody>
			</table>
                </g:form>
            </div>
        <div class="pagination">
            <ul class="pages">
                <g:paginateCustom total="${perfilInstanceTotal}" />
            </ul>
        </div>
        <g:link style="float: right;" action="create" ><button class="greyishBtn">Adicionar</button></g:link>

		</div>
    <div class="fix"></div>
	</body>
</html>
