
<%@ page import="sisap.PeriodoDisciplina" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'periodoDisciplina.label', default: 'PeriodoDisciplina')}" />
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

        <div class="fix"></div>
        <div class="table">
            <div class="head"><h5 class="iFrames">Listagem de <g:message code="default.list.label" args="[entityName]" />: ${periodoDisciplinaInstanceTotal}</h5></div>
			<table cellpadding="0" cellspacing="0" width="100%" class="tableStatic resize">
				<thead>
					<tr>
					
                        <td>${message(code: 'periodoDisciplina.ano.label', default: 'Ano')}</td>
					
						<td><g:message code="periodoDisciplina.disciplina.label" default="Disciplina" /></td>
					
						<td><g:message code="periodoDisciplina.professor.label" default="Professor" /></td>
					
                        <td>${message(code: 'periodoDisciplina.semestre.label', default: 'Semestre')}</td>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${periodoDisciplinaInstanceList}" status="i" var="periodoDisciplinaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${periodoDisciplinaInstance.id}">${fieldValue(bean: periodoDisciplinaInstance, field: "ano")}</g:link></td>
					
						<td>${fieldValue(bean: periodoDisciplinaInstance, field: "disciplina")}</td>
					
						<td>${fieldValue(bean: periodoDisciplinaInstance, field: "professor")}</td>
					
						<td>${fieldValue(bean: periodoDisciplinaInstance, field: "semestre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
        <div class="pagination">
            <ul class="pages">
                <g:paginateCustom total="${periodoDisciplinaInstanceTotal}" />
            </ul>
        </div>
        <g:link action="passo1" style="float: right;"><button class="greyishBtn">Adicionar</button></g:link>

		</div>
    <div class="fix"></div>
	</body>
</html>
