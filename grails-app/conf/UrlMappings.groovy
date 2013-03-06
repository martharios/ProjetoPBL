class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: 'login',  action: 'index')
		"500"(view:'/error')
        "404"(view:'/errors/error404')
	}
}
