<li class="dd-item">
    <div class="dd-handle" data-id="${category.id}">${index} - ${category.name} ("${category.url}")</div>
    <g:set var="categories" value="${com.tcoinnews.Category.findAllByParent(category)}"/>
    <g:if test="${categories}">
        <ol class="dd-list">
        <g:each in="${categories}" var="cate" status="i">
            <g:render template="/category/category" model="[category: cate, index: i + 1]"/>
        </g:each>
        </ol>
    </g:if>
</li>