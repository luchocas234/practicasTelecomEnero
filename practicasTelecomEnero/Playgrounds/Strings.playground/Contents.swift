import UIKit

//Comparacion

let name1 = "Pedro"
let name2 = "Juan"
let name3 = "Pedro"
//false
name1 == name2
//true
name1 == name3

//Contiene en el array

let array1 = "Esto es un array de Pedro"
let array2 = ""
array1.contains(name1)
array1.contains("array")

array1.contains(name2)

//Vacia

array2 == ""
array2.isEmpty

//Recorrido

for content in array1 {
    print(content)
}

