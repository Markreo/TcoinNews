package com.tcoinnews

import javafx.geometry.Pos
import org.grails.web.json.JSONArray
import org.grails.web.json.JSONObject

class PostController extends BaseController {

    def index() {
        redirect(action: 'list')
    }

    def list(){
    }

    def add(){
        render(view: 'edit', model: [post: new Post()])
    }

    def edit(long id){
        Post post =  id ? Post.get(id) : new Post(owner: loggedUser)
        render(template: 'edit', model: [post: post])
    }

    def data(){
        println("params ${params}")
        def result = new JSONObject()
        def aaData = new JSONArray()
        def posts = Post.createCriteria().list([max: params.int("length"), offset: params.int("start")]) {
            if(params.search){
                or {
                    ilike('name', "%${params.search}%")
                }
            }
        }
        posts.each { Post post ->
            def arr = new JSONArray()
            arr.put("a")
            arr.put("b")
            arr.put("c")
            aaData.put(arr)
        }

        int total = posts.totalCount
        result.put("draw", params.int("draw"))
        result.put("recordsTotal", total)
        result.put("recordsFiltered", total)
        result.put("data", aaData)
        render(result)
    }
}
