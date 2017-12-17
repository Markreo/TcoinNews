package com.tcoinnews

class HelperTagLib {
    static defaultEncodeAs = [all:'raw']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace  = "tc"

    def springSecurityService

    def message ={ attrs, body ->
        out << g.render(template: '/template/message')
    }

    def avatar ={ attrs, body ->
        String className = attrs.className
        User user = springSecurityService.currentUser ?: null
        out << """<img src="${user?.avatar ?: '/assets/defaultuser.png'}" alt="${user.name}" ${className ? "class='${className}'" : ""}>"""
    }
}
