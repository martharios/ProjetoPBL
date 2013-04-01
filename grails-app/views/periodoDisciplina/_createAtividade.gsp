<g:form action="save"  class="mainForm">
    <g:hiddenField name="idPeriodoDisciplina" value="${idPeriodoDisciplina}" />
    <fieldset class="form">
        <div class="widget first">
            <div class="head"><h5 class="iList">Preencha os campos abaixo</h5></div>

            <div class="rowElem"><label for="codigo">
                <g:message code="disciplina.codigo.label" default="Codigo" />

            </label><div class="formRight">
                <div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'codigo', 'error')} ">

                    <g:textField name="codigo" value="${disciplinaInstance?.codigo}"/>
                </div>
            </div><div class="fix"></div></div>
            <div class="rowElem"><label for="codigo">
                <g:message code="disciplina.codigo.label" default="Codigo" />

            </label><div class="formRight">
                <div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'codigo', 'error')} ">
                    <g:textField name="codigo" value="${disciplinaInstance?.codigo}"/>
                </div>
            </div><div class="fix"></div></div>
            <div class="rowElem">
                <label>Prazo:</label>
                <div class="formRight">
                    <input type="text" class="datepicker" />
                </div>
                <div class="fix"></div>
            </div>

            <fieldset>
                <div class="widget">
                    <div class="head"><h5 class="iPencil">Descrição</h5></div>
                    <textarea id="wyEditor" rows="5" cols=""></textarea>
                </div>
            </fieldset>
            <div class="rowElem">
                <div class="formRight">
                    <g:submitButton name="create" class="greyishBtn submitForm" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </div>
                <div class="fix"></div>
            </div>


            <div class="fix"></div>
        </div>
    </fieldset>
</g:form>