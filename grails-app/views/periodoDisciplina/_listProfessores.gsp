<g:setProvider library="jquery"/>
<g:javascript>
    $(document).ready(function () {
        alert('a');
    });
</g:javascript>
<div class="table">
    <div class="head"><h5 class="iFrames">Professor da Disciplina: ${professoresTotal}</h5></div>

    <table cellpadding="0" cellspacing="0" width="100%" class="tableStatic resize">
        <thead class="head">
        <tr>
            <td width="10%">Selecione</td>
            <td width="20%">Matrícula</td>
            <td>Nome</td>
            <td>Email</td>
        </tr>

        </thead>
        <tbody>
        <g:each in="${professores}" var="professor" status="i">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td width="10%"><div class="rowElem"><input type="radio" onclick="professorAttr(this);" value="${professor.id}"  name="professor"  /></div></td>
                <td width="20%">${professor?.matricula}</td>
                <td>${professor?.nome}</td>
                <td>${professor?.email}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
<div class="pagination">
    <ul class="pages">
        <g:paginateCustom total="${professoresTotal}" action="passo1" params="${params}" />
    </ul>
</div>
