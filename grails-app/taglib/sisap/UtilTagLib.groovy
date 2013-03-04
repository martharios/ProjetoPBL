package sisap

import java.text.SimpleDateFormat

class UtilTagLib {
    def anoVigente = { attrs, body ->
        out << "<div class=\"anoVigente\">"
//        out << "União Metropolitana de Educação e Cultura - "
        out << "${new SimpleDateFormat("yyyy").format(new Date())}"
        out << "</div>"
    }
}
