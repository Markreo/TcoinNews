<sec:ifLoggedIn>
    <g:if test="${flash.message}">
        <div class="alert alert-success">
            ${flash.message}
        </div>
    </g:if>
    <g:if test="${flash.warn}">
        <div class="alert alert-danger">
            ${raw(flash.warn)}
        </div>
    </g:if>
    <g:if test="${flash.error}">
        <div class="alert alert-danger">
            ${raw(flash.error)}
        </div>
    </g:if>
    <g:if test="${flash.errors}">
        ${raw(flash.errors)}
    </g:if>
    <g:if test="${flash.info}">
        <div class="alert alert-info">
            ${raw(flash.info)}
        </div>
    </g:if>
    <g:if test="${flash.warning}">
        <div class="alert alert-warning">
            ${raw(flash.warning)}
        </div>
    </g:if>
    <g:if test="${flash.null}">
        ${raw(flash.null)}
    </g:if>
</sec:ifLoggedIn>
<sec:ifNotLoggedIn>
    <g:if test="${flash.message}">
        <div class="alert alert-success">
            ${raw(flash.message)}
        </div>
    </g:if>
    <g:if test="${flash.warn}">
        <div class="alert alert-danger">
            ${raw(flash.warn)}
        </div>
    </g:if>
    <g:if test="${flash.warning}">
        <div class="alert alert-warning" id="warning">
            ${raw(flash.warning)}
        </div>
    </g:if>
</sec:ifNotLoggedIn>