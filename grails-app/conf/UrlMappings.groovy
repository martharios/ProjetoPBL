class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: 'login',  action: 'index')
		"500"(view:'/errors/error500')
        "404"(view:'/errors/error403')
        "403"(view:'/errors/error403')
	}
}
