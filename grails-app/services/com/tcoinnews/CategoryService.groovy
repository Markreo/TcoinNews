package com.tcoinnews

import grails.transaction.Transactional

@Transactional
class CategoryService {

    def serviceMethod() {

    }

    List<Category> getListUrl(Category category){
        def parent = category.parent
        if(parent){
            List<Category> list = this.getListUrl(parent)
            list.push(category)
            println("list ${list.collect{it.name}} add ${category.name} = ${list.collect{it.name}}")
            return list
        } else{
            return [category]
        }
    }
}
