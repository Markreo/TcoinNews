package com.tcoinnews

import org.grails.web.json.JSONArray
import org.grails.web.json.JSONObject

class AdminController extends BaseController{

    def index() {
        redirect(action: 'list')
    }

    def list(){

    }

    def create(){
        render(view: 'create', model: [admin: new User(isAdmin: true)])
    }

    def edit(long id){
        def admin = User.findByIdAndIsAdmin(id, true)
        if(admin){
            render(view: 'edit', model: [admin: admin])
        } else{
            response.sendError(404)
        }
    }

    def show(long id){
        def admin = User.findByIdAndIsAdmin(id, true)
        if(admin){
            def posts = Post.findAllByEnableAndOwner(true, admin)
            render(view: 'show', model: [admin: admin, posts: posts])
        } else{
            response.sendError(404)
        }
    }

    def save(){
        println("params ${params}")
        params.remove("id")
        User admin = new User(params)
        admin.isAdmin = true
        if(!params.repassword){
            admin.errors.rejectValue("password", "repasswordnull")
        } else{
            if(!(params.password as String).equals(params.repassword as String)){
                println("REJECT")
                admin.errors.rejectValue("password", "repasswordmatch")
            }
        }
        if(!params.get("enabled").equals("on")) {
            admin.enabled = false
        }

        if(admin.hasErrors() || !admin.save(flush: true)){
            render(view: 'create', model: [admin: admin])
        } else {
            flash.message = "saved!"
            redirect(action: 'list')
        }
    }

    def update(long id){
        User admin = User.get(id)
        params.remove("id")
        params.remove("username")
        println("update params ${params}")

        if(admin){

            if(params.getBoolean("changePassword"))
            {
                if(!params.repassword){
                    admin.errors.rejectValue("password", "repasswordnull")
                } else{
                    if(!(params.password as String).equals(params.repassword as String)){
                        println("REJECT")
                        admin.errors.rejectValue("password", "repasswordmatch")
                    }
                }
            } else {
                params.remove("password")
            }

            admin.properties = params

            if(admin.hasErrors() || !admin.save(flush: true)){
                println("save error ${admin.errors}")
                render(view: 'edit', model: [admin: admin, changePassword: params.getBoolean("changePassword")])
            } else{
                flash.message = "saved!"
                redirect(action: 'list')
            }
        } else{
            response.sendError(404)
        }

    }

    def data(){
        println("params ${params}")
        def result = new JSONObject()
        def aaData = new JSONArray()
        def admins = User.createCriteria().list([max: params.int("length"), offset: params.int("start"), sort: 'lastUpdated']) {
            if(params.search){
                or {
                    ilike('name', "%${params.search}%")
                }
            }
        }
        admins.eachWithIndex { User admin, int i ->
            def arr = new JSONArray()
            arr.put(i + 1)
            arr.put("""<a href="${createLink(controller: 'admin',action: 'show', id: admin.id)}">${admin.name}</a> ${admin.enabled ? '' : '(Disabled))'}""")
            arr.put(admin.name)
            arr.put(admin.email)
            arr.put(admin.lastUpdated?.format("dd/MM/yyyy HH:mm"))
            arr.put("""<a href="${createLink(controller: 'admin', action: 'edit', id: admin.id)}">Edit</a> <a href="${createLink(controller: 'admin', action: 'delete', id: admin.id)}" onClick="return confirm('Bạn đang yêu cầu xóa 1 admin?')">Delete</a>""")

            aaData.put(arr)
        }

        int total = admins.totalCount
        result.put("draw", params.int("draw"))
        result.put("recordsTotal", total)
        result.put("recordsFiltered", total)
        result.put("data", aaData)
        render(result)
    }

    def delete(long id){
        def admin = User.get(id)
        if(admin){
            UserRole.executeUpdate("delete from UserRole where user=:admin", [admin: admin])
            admin.delete(flush: true)
            flash.message = "deleted"
        }
        redirect(action: 'list')
    }
}
