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


//Extensiones

let myMeters: Double = 5000

func metersToKm(meters: Double) -> Double {
    return meters / 1000
}

print(metersToKm(meters: myMeters))

//Agregamos una extension a la clase Double

extension Double {
    var km: Double {
        return self / 1000
    }
    
    var m: Double{
        return self
    }
    
    var cm: Double {
        return self * 100
    }
    
}

// Con la extension ahora podemos solicitar por propiedades que nos devuelva el valor en Km Cm o M

print(myMeters.cm)

// Protocolos

protocol PersonProtocol {
    var name: String { get set }
    var age: Int { get set }
    
    func fullName() -> String
}

struct Programmer: PersonProtocol {
   
    var name: String
    var age: Int
    var language: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) y su lenguaje favorito es \(language)"
    }
}

struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    var subject: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) e imparte la asignatura de \(subject)"
    }
}

let myProgrammer = Programmer(name: "Brais", age: 32, language: "Swift")
let myTeacher = Teacher(name: "Juan", age: 50, subject: "Matemáticas")

print(myProgrammer.fullName())
print(myTeacher.fullName())

// Protocolo delegado

// Esta clase va a llamar a la segunda
// A su vez también tiene asignado el Protogl SecondClass
class FirstClass: SecondClassProtocol {
   
    func callSecond() {
        let secondClass = SecondClass()
        secondClass.delegate = self // Se le asigna el delegado a esta clase,
        secondClass.callFirst() // esta funcion hace la llamada a la clase1 mediante el protocolo, luego termina en Func Call()
    }
    
    func call() {
        print("Estoy de vuelta!")
    }
    
}

protocol SecondClassProtocol {
    
    func call()
    
}

class SecondClass {
    //Se crea variable llamda delegate, que es la que sirve para poder darsela a su Delegado
    var delegate: SecondClassProtocol?
    
    func callFirst() {
        
        sleep(5)
        
        delegate?.call()
    }
    
}

let firstClass = FirstClass()
firstClass.callSecond()


