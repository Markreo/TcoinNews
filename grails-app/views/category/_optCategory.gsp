<option ${category.id == value?.id ? "selected" : ""} value="${category.id}">
    <g:if test="${index != 0}">
        <g:each in="${(1..index)}">-</g:each>>
    </g:if>
    ${category.name}
</option>
<g:set var="childs" value="${com.tcoinnews.Category.findAllByParent(category)}"/>
<g:if test="${childs}">
    <g:each in="${childs}" var="cate">
        <g:render template="/category/optCategory" model="[category: cate, value: value, index: index +1]"/>
    </g:each>
</g:if>