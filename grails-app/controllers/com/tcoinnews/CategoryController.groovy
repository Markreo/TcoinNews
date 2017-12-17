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

    def edit(long id){
        def category = Category.get(id)
        if(category){
            render(view: 'edit', model: [category: category])
        } else{
            response.sendError(404)
        }
    }

    def test(){
        def mt = Category.get(4)
        def l = this.getListUrl(mt)
        render mt.collect{it.name}
    }

    def save(long id){
        def category = id?  Category.get(id) : new Category(owner: loggedUser)
        if(id){
            params.remove("id")
        }
        category.properties = params
        category.url = "dcm"
        flash.messsage = "Đã lưu!"
        if(category.hasErrors() || !category.save(flush: true)){
            render(view: 'edit', model: [category: category])
        } else{
            flash.message = "Đã lưu!"
            redirect(action: 'index')
        }
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

    def delete(long id){
        Category category = Category.get(id)
        if(category){
            Post.executeUpdate("update Category c set c.category= null where c.category=:category", [category: category])
            category.delete(flush: true)
        }
    }
}
