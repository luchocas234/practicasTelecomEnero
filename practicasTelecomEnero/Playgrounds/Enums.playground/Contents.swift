import UIKit
// Sintaxis Enumeración

enum PersonalData {
    case name
    case surname
    case address
    case phone
    
    // case name, surname, address, phone -> También lo podemos definir así
}

var currentData: PersonalData = .name
var input = "Nombre2"

currentData = .phone
input = "666666666"

// Enumeraciones con valores asociados

enum ComplexPersonalData {
    case name(String)
    case surname(String, String)
    case address(String, Int)
    case phone(Int)
}

var complexCurrentData: ComplexPersonalData = .name("Nombre2")

complexCurrentData = .address("Calle Test", 5)

// Enumeraciones con el mismo tipo de valor

enum RawPersonalData: String {
    case name = "Nombre"
    case surname = "Apellidos"
    case address = "Dirección"
    case phone = "Número de teléfono"
}
//Esto nos permite no estár tipeando y evitar errores. Se puede aplicar en colores, o textos por defecto.
RawPersonalData.phone.rawValue
