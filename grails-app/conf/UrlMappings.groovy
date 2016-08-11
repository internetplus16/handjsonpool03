class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
        "/json/$project/$user/$method"(controller:"json",action:"index")
//        "/json/$project"(controller: 'json',action: "index2")
//        "/json/$placeholderUrl"(controller: 'json',action: "index3")
	}
}
