import UIKit

//Optionals

var perrito : String?//puede contener un valor nulo o ser String

//Utilizamos Optionasl para evitar errores.

if let perritoPrueba = perrito {
    print(perritoPrueba)
}else{
    print("es nulo")
}

perrito = "holi"

perrito!

//guard let perritoPrueba2 = perrito else{
//    print ("es nulo 2")
//
//}

//Manejo de Errores

func sum (firstNum: Int?, secondNum: Int?) throws -> Int {
    
    // Lanzamos los errores
    if firstNum == nil {
        throw SumError.firstNumberNil
    }else if secondNum == nil{
        throw SumError.secondNumberNil
    }else if firstNum! < 0 || secondNum! < 0{
        throw SumError.numberNegative(firstNumber: firstNum!, secondNumber: secondNum!)
    }
    //Realizamos suma
    return firstNum! + secondNum!
    
}

//Definicion de errores

enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int) //se puede pasarle parametros
}

// Propagacion de errores
do {
    print(try sum(firstNum: nil, secondNum: 10))
} catch SumError.firstNumberNil{
    print("El primer num es nulo")
}catch SumError.secondNumberNil{
    print("El segundo num es nulo")
} catch SumError.numberNegative(let firstNumber, let secondNumber){
    print("Hay algún número negativo. first")
}

// Type Casting y DownCasting

let myString = "hola"
let myInt = 32

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Lucho"
myClass.age = 25

let myArray: [Any] = [myString, myInt, myClass]

//Recorremos el array

for item in myArray{
    // Type Casting .. usamos "is"
    if item is String{
        let itemString = item as! String
        print("Esto es un String \(itemString)")
    }else if item is Int {
        let itemInt = item as! Int
        print("esto es un Int \(itemInt)")
    }else if item is MyClass {
        let itemClass = item as! MyClass
        print("Esta es una clase \(itemClass)")
    }
}

// otra opcion

for item in myArray{
    
    if let myItemString = item as? String{
        print("es un string xd")
    }else if let myItemInt = item as? Int{
     print("es un entero")
    }else if let myItemClass = item as? MyClass{
        print("Es una clase")
    }
}
