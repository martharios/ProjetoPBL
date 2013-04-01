<g:form action="save"  class="mainForm">
    <fieldset class="form">
        <div class="widget first">
            <div class="head"><h5 class="iList">Preencha os campos abaixo</h5></div>

            <fieldset>
                <div class="widget">
                    <div class="head"><h5 class="iPencil">WYSIWYG editor</h5></div>
                    <textarea class="wysiwyg" rows="3" cols=""></textarea>
                </div>
            </fieldset>


            <g:submitButton name="create" class="greyishBtn submitForm" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            <div class="fix"></div>
        </div>
    </fieldset>
</g:form>