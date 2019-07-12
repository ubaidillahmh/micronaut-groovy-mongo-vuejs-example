package micronaut.vuejs

import org.bson.types.ObjectId
import grails.gorm.annotation.*

@Entity
class Tabung {

    ObjectId id

    String nominal
    String type

    Date dateCreated
    Date lastUpdated

    static constraints = {
        nominal blank: false
    }

}