<div class="table">
    <div class="head"><h5 class="iFrames">Professor da Disciplina</h5></div>

    <table cellpadding="0" cellspacing="0" width="100%" class="tableStatic resize">
        <thead class="head">
        <tr>
            <td width="10%">Selecione</td>
            <td width="20%">Matrícula</td>
            <td>Nome</td>
            <td>Email</td>
        </tr>
        <tr>
            <td width="10%"></td>
            <td width="20%"><g:textField type="text" id="matricula" name="matricula" onkeyup="pesquisa();" value="${params?.matricula}" style="width: 90%;" /></td>
            <td><g:textField type="text" id="nome" name="nome" style="width: 90%;" onkeyup="pesquisa();" value="${params?.nome}" /></td>
            <td><g:textField type="text" id= "email" name="email" style="width: 90%;" onkeyup="pesquisa();" value="${params?.email}" /></td>
        </tr>
        </thead>
        <tbody>
        <g:each in="${professores}" var="professor" status="i">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td width="10%"><div class="rowElem"><input type="radio" value="${professor.id}"  name="professor"  /></div></td>
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
        <g:paginateCustom total="${professoresTotal}" params="${params}" />
    </ul>
</div>