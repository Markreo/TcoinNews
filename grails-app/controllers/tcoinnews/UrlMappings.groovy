package tcoinnews

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/$id"{
            controller = 'post'
            action = 'show'
        }

        "/"(controller: "home", action:"index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
