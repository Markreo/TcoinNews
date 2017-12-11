package com.tcoinnews

class HelperTagLib {
    static defaultEncodeAs = [all:'raw']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace  = "tc"

    def message ={ attrs, body ->
        out << g.render(template: '/template/message')
    }
}
