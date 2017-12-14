package com.tcoinnews

import grails.transaction.Transactional
import grails.util.Holders
import grails.web.mapping.LinkGenerator
import org.apache.commons.lang.RandomStringUtils
import org.springframework.web.multipart.MultipartFile

@Transactional
class MediaService {
    LinkGenerator grailsLinkGenerator

    def serviceMethod() {

    }

    /***
     * return image
     */
    def saveImage(MultipartFile file, User owner){
        try {
            if(!file.isEmpty()){
                File folder = new File("${Holders.config.folder}")
                folder.mkdirs()
                File uploadFile = new File("${Holders.config.folder}/${System.currentTimeMillis()}_${file.originalFilename}")
                file.transferTo(uploadFile)
                def image = new Media(name: file.originalFilename, slug: RandomStringUtils.random(16, true, true)?.toString(), owner: owner, type: Media.Type.PHOTO, path: uploadFile.getAbsolutePath())
                println(image.slug)
                if(image.hasErrors() || !image.save(flush: true)){
                    println("save image error ${image.errors}")
                    return null
                } else{
                    println("File ${image.path}")
                    return "${grailsLinkGenerator.link(controller: 'media', action: 'image', id: image.slug, absolute: true)}"
                }
            } else{
                return null
            }
        } catch (Exception ex){
            ex.printStackTrace()
            return null
        }
    }

}
