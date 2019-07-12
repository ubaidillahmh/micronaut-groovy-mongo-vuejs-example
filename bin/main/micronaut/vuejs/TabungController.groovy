package micronaut.vuejs

import io.micronaut.http.annotation.*
import io.micronaut.spring.tx.annotation.*
import java.text.*

@Controller("/api")
class TabungController {

    @Get("/")
    @Transactional(readOnly = true)
    def index() {
        Tabung.list()
    }

    @Post("/")
    @Transactional
    def save(String nominal, String type) {
        def tabung = new Tabung(nominal: nominal, type: type)
        if (tabung.save()) {
            return tabung
        } else {
            return tabung.errors.allErrors.collect { MessageFormat.format(it.defaultMessage, it.arguments) }.join(", ")
        }
    }
}