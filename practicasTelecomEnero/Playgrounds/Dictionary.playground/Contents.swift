import UIKit

// Sintaxis Diccionarios
let myClassicDictionary = Dictionary<Int, String>()
var myModernDictionary = [Int:String]()

// Añadir datos
myModernDictionary = [001:"Lionel", 002:"Messi"]

// Añadir un solo dato
myModernDictionary[003] = "Paredes"
myModernDictionary[004] = "Alvarez"
myModernDictionary[005] = "Dybala"

// Acceso a un dato
myModernDictionary[002]

// La clave del diccionario es única
myModernDictionary[002] = "Pepito"
myModernDictionary.updateValue("Messias", forKey: 002) // Opción clásica
myModernDictionary[002]

// Borrar un dato
myModernDictionary[002] = nil
myModernDictionary.removeValue(forKey: 002) // Opción clásica
myModernDictionary[002]

// Tuplas...

var persona = ("Lionel","Messi",35,1.69)

persona.3 // 1,69

var personaNamed = (nombre:"Pedro",apellido:"Pascal",edad:32,altura:1.39)
personaNamed.edad
