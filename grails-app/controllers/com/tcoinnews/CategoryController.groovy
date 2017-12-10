package com.tcoinnews

class CategoryController extends BaseController {
    def categoryService

   def index(){
      def categories = Category.findAllByParentIsNull()
      [categories: categories]
   }

   def add(){
      render(view: 'edit', model: [category: new Category()])
   }

    def test(){
        def mt = Category.get(4)
        def l = this.getListUrl(mt)
        render mt.collect{it.name}
    }

    def getListUrl = { category ->
        def parent = category.parent
        if(parent){
            def list = getListUrl(parent)
            list.push(category)
            println("list ${list.collect{it.name}} add ${category.name} = ${list.collect{it.name}}")
            return list
        } else{
            return [category]
        }
    }
}
