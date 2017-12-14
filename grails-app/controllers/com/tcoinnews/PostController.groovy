package com.tcoinnews

import org.apache.commons.lang.StringUtils
import org.grails.web.json.JSONArray
import org.grails.web.json.JSONObject

class PostController extends BaseController {

    def mediaService

    def index() {
        redirect(action: 'list')
    }

    def list(){
    }

    def add(){
        render(view: 'edit', model: [post: new Post()])
    }

    def edit(long id){
        Post post =  Post.get(id)
        if(post){
            render(view: 'edit', model: [post: post])
        } else{
            response.sendError(404)
        }
    }

    def data(){
        println("params ${params}")
        def result = new JSONObject()
        def aaData = new JSONArray()
        def posts = Post.createCriteria().list([max: params.int("length"), offset: params.int("start"), sort: 'lastUpdated']) {
            if(params.search){
                or {
                    ilike('name', "%${params.search}%")
                }
            }
        }
        posts.eachWithIndex { Post post, int i ->
            def arr = new JSONArray()
            arr.put(i + 1)
            arr.put("""${post.title} <a href="#"><i class="fa fa-share-square-o"></i></a>  """)
            arr.put(post.intro)
            arr.put(post.category?.name)
            arr.put(post.enable)
            arr.put(post.owner?.name)
            arr.put(post.lastUpdated?.format("dd/MM/yy HH:mm"))
            arr.put("""<a href=${createLink(controller: 'post', action: 'edit', id: post.id)}>Edit</a>""")
            aaData.put(arr)
        }

        int total = posts.totalCount
        result.put("draw", params.int("draw"))
        result.put("recordsTotal", total)
        result.put("recordsFiltered", total)
        result.put("data", aaData)
        render(result)
    }

    def save(long id){
        println("save post params: ${params}")
        Post post =  id ? Post.get(id) : new Post(owner: loggedUser)
        if(id){
            params.remove("id")
        }

        if(StringUtils.isBlank(params.url)){
            params.url = (params.title as String)?.trim()?.replaceAll("[-+.^:, ]", "-")
        } else{
            params.url = (params.url as String).trim().replaceAll("[-+.^:, ]", "-")
        }

        //meida controller -> function saveImage() return a link
        if(params.image){
            def imagePath = mediaService.saveImage(params.image, loggedUser)
            if(imagePath){
                post.image = imagePath
            }
        }
        params.remove("image")
        post.properties = params


        if(post.hasErrors() || !post.save(flush: true)){
            println("error ${post.errors}")
            render(view: 'edit', model: [post: post])
        } else{
            flash.message = "Đã lưu!"
            redirect(action: 'list')
        }
    }

    def delete(long id){
        def post = Post.get(id)
        if(post){
            if(post.delete(flush: true)){
                flash.message = "deleted!"
            }else {
                flash.error = "error!"
            }
        }
        redirect(action: 'list')
    }
}
