import UIKit

//funciones

func promedioMaterias(materia1: Int, materia2: Int, materia3: Int) -> Int {
    return ((materia1+materia2+materia3)/3)
}
promedioMaterias(materia1: 34, materia2: 23, materia3: 23)
// Tiene Parametros tipo Int, y devuelve un resultado tipo Int " -> Int "

//Clousere

/*
 
 {
    (parametros) -> tipo-valor-retorno in
    code
 }
 
 
 */
// ej Clousere

let clousureEj = {
    (materia1: Int, materia2: Int, materia3: Int) -> Int in
        return ((materia1+materia2+materia3)/3)
    }
    clousureEj(2,3,4)
    
