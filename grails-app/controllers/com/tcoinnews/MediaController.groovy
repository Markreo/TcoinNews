package com.tcoinnews

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.grails.web.json.JSONArray
import org.grails.web.json.JSONObject
import org.springframework.web.multipart.support.StandardMultipartHttpServletRequest

class MediaController extends BaseController {

    def mediaService
    def index() {
       redirect(action: 'list')
    }

    @Secured("permitAll")
    def image(String id){//id == slug
        try {
            Media photo = Media.findBySlug(id)
            if(photo){
                File f = new File(photo.path)
                if (!f.exists() || !f.length() ) {
                    f = new File(Media.findBySlug("default")?.path)
                }
                response.setHeader('Content-length', f.size().toString())
                response.contentType = "image/jpg" // or the appropriate image content type
                response.outputStream << f.bytes
                response.outputStream.flush()
            }
        } catch (ex) {
            ex.printStackTrace()
            return response.sendError(404)
        }
    }

    @Secured("permitAll")
    def video(String id){//id == slug

    }

    def list(){
    }

    def data(){
        def result = new JSONObject()
        def aaData = new JSONArray()
        def medias = Media.createCriteria().list([max: params.int("length"), offset: params.int("start")]) {
            if(params.search){
                or {
                    ilike('name', "%${params.search}%")
                    ilike('slug', "%${params.search}%")
                }
            }
        }
        medias.eachWithIndex { Media media, int i ->
            def arr = new JSONArray()
            arr.put(i + 1)
            arr.put("""${media.name} <a href="${createLink(controller:'media', action: (media.type as String).toLowerCase(), id: media.slug, absolute: true)}" target="_blank" data-toggle="tooltip" data-placement="right" title="" data-original-title="Tooltip on right"><i class="fa fa-share-square-o"></i></a>  """)
            arr.put("<img src=${createLink(controller: 'media', action: (media.type as String).toLowerCase(), id: media.slug)} width='100px'>")
            arr.put(media.slug)
            arr.put(media.type)
            arr.put(media.owner?.name)
            arr.put(media.lastUpdated?.format("dd/MM/yy HH:mm"))
            arr.put("""<a href=${createLink(controller: 'media', action: 'delete', id: media.id)} onClick="return confirm('Bạn đang thực hiện hành động xóa File?')">Delete</a>""")
            aaData.put(arr)
        }

        int total = medias.totalCount
        result.put("draw", params.int("draw"))
        result.put("recordsTotal", total)
        result.put("recordsFiltered", total)
        result.put("data", aaData)
        render(result)
    }

    def ajaxUpload() {
        StandardMultipartHttpServletRequest req = request;
        def file = req.getFile('contentImage');
        String imagePath = mediaService.saveImage(file, loggedUser)
        if(imagePath){
            render([url: "${createLink(controller: 'media', action: 'image', id: imagePath, absolute: true)}", name: "file name"] as JSON)
        } else{
            response.sendError(404)
        }
    }

    def delete(long id){
        def media = Media.get(id)
        if(media){
            def path = media.path
            media.delete(flush: true)
            flash.message = "da xoa"
            File deleteFile = new File(path)
            if(deleteFile.exists()){
                deleteFile.delete()
            }
        }
        redirect(controller: 'media',action: 'list')
    }
}
