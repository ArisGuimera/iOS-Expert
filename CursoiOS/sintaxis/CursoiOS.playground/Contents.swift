import UIKit

var greeting = "Hello, playground"
var name = "Aris"
let name2 = "Aris"
var age = "30"
age = "31"

// TIPOS DE VARIABLES

//CHAR
var symbol:Character = "e"
var symbol2:Character = "\u{2665}"
print(symbol2)

//STRING
var dogName:String = "Bimbo"

//INT
var year:Int = 2024

//FLOAT
var piFloat:Float = 3.1421312312412421412445125125215
print(piFloat)

//DOUBLE
var piDouble:Double = 3.1421312312412421412445125125215
print(piDouble)

//Boolean BOOL
var imHappy = true

//Operadores aritmeticos
var a:Int = 5
let b:Int = 10

var sum = a + b //Suma
var subtract = a - b //Resta
var multiply = a * b //Multiplicación
var divide = a / b //Division
var module = a % b //Módulo

//Operadores de asignación
var example = 5

example += 10 //Suma
example -= 10 //Resta
example *= 10 //Multiplicacion
example /= 10 //División
example %= 10 //Modulo

//Operadores lógicos comparación
let age2 = 18

let isOlder = age2 > 18
let isYounger = age2 < 18
let isEqual = age2 == 35
let isNotEqual = age2 != 35
let isOlderOrEqual = age2 >= 18
let isYoungerOrEqual = age2 <= 18

let isSunny:Bool = true
let temperature:Int = 26

let isPleasant:Bool = temperature > 25 && isSunny //AND
let goToBeach:Bool = temperature > 25 || isSunny //OR
let wearHat:Bool = !isSunny

//Conversiones
let integerNumber:Int = 34
let decimalNumber:Double = 25.65
let superNumber:Double = Double(integerNumber) + decimalNumber
let superNumber2:Int = integerNumber + Int(decimalNumber)
print(superNumber)

/**Ejercicio 1
Registro de Asistencia: Declara una variable asistencias y asígnale un número de asistencias a una clase.
Declara una variable totalClases y asígnale el número total de clases.
Calcula el porcentaje de asistencia utilizando la fórmula: Porcentaje = (Asistencias / TotalClases) * 100.
Imprime el porcentaje de asistencia. */

let asistencias = 10
let totalClases = 20
let resultadoAsistencia:Double = (Double(asistencias)/Double(totalClases)) * 100
print("El resultado de asistencia es \(resultadoAsistencia)")


/** Ejercicio 2
 Calculadora de IMC (Índice de Masa Corporal):
 Declara dos variables: peso (en kilogramos) y altura (en metros).
 Calcula el IMC utilizando la fórmula: IMC = peso / (altura * altura).
 Imprime el resultado.*/

let peso:Float = 88
let altura:Float = 1.88
let resultadoIMC = peso/(altura * altura)
print("Tu IMC es de \(resultadoIMC)")


/** Ejercicio 3
 Cálculo de Descuento:
 Declara dos variables: precioOriginal y porcentajeDescuento.
 Calcula el precio después del descuento utilizando la fórmula: PrecioDescuento = PrecioOriginal - (PrecioOriginal * PorcentajeDescuento / 100).
 Imprime el precio original y el precio con descuento.*/

let precioOriginal:Double = 17.99
let porcentajeDescuento:Double = 20

let precioConDescuento = precioOriginal - (precioOriginal * porcentajeDescuento/100)
print("El precio original es de \(precioOriginal) y con el descuento del \(porcentajeDescuento)% tu producto se queda en \(precioConDescuento)")


//Funciones

func showMyName(){
    print("Hola, es mi primera funcion")
}

showMyName()

func showMyCustomName(nombre:String){
    print("Hola \(nombre)")
}

showMyCustomName(nombre: "Aris")

func calculate(a:Int, b:Int){
    let result = a + b
    print("El resultado es \(result)")
}

calculate(a: 10, b: 20)

func calculate2(_ a:Int, _ b:Int){
    let result = a + b
    print("El resultado es \(result)")
}

calculate2(20, 2)

func calculate3(a:Int, b:Int) -> Int{
    let result = a + b
    return result
}

let mySuperResult:Int = calculate3(a: 5, b: 10)
print(mySuperResult)


//IF-ELSE
let userAge = 8

if userAge >= 18 {
    print("Eres mayor de edad")
}else{
    print("Eres menor de edad")
}

func greeting(_ hour:Int){
    if hour < 12{
        print("Buenos días")
    }else if hour < 18{
        print("Buenas tardes")
    }else{
        print("Buenas noches")
    }
}

greeting(16)

func getMonth(month:Int){
    if month == 1{
        print("Enero")
    }else if month == 2{
        print("Febrero")
    }else if month == 3{
        print("Marzo")
    }else if month == 4{
        print("Abril")
    }else if month == 5{
        print("Mayo")
    }else if month == 6{
        print("Junio")
    }else if month == 7{
        print("Julio")
    }else if month == 8{
        print("Agosto")
    }else if month == 9{
        print("Septiembre")
    }else if month == 10{
        print("Octubre")
    }else if month == 11{
        print("Noviembre")
    }else if month == 12{
        print("Diciembre")
    }else{
        print("Número invalido, añade otro")
    }
}

getMonth(month: 12)

//SWITCH
func getMonthWithSwitch(_ month:Int){
    switch month{
    case 1: print("Enero")
    case 2: print("Febrero")
    case 3: print("Marzo")
    case 4: print("Abril")
    case 5: print("Mayo")
    case 6: print("Junio")
    case 7: print("Julio")
    case 8: print("Agosto")
    case 9: print("Septiembre")
    case 10: print("Octubre")
    case 11: print("Noviembre")
    case 12: print("Diciembre")
    default: print("Introduce un mes válido")
    }
}

getMonthWithSwitch(3)

func getTrimester(_ month:Int){
    switch month{
    case 1, 2, 3: print("Primer trimestre")
    case 4, 5, 6: print("Segundo trimestre")
    case 7, 8, 9: print("Tercer trimestre")
    case 10, 11, 12: print("Cuarto trimestre")
    default: print("Introduce un mes válido")
    }
}

getTrimester(2)

func getSemester(_ month:Int){
    switch month{
    case 1...6: print("Primer trimestre")
    case 7...12: print("Tercer trimestre")
    default: print("Introduce un mes válido")
    }
}

/** Ejercicio 4
 Calcula el área de un círculo:
 Crea una función que reciba el radio de un círculo y devuelva su área (PI * Radio * Radio).
 Luego pinta el resultado por pantalla. */

func calculateCircleArea(_ radius:Double) -> Double{
    return Double.pi * radius * radius
}

let radius:Double = 10
let result = calculateCircleArea(radius)
print("El área de un círculo con un radio de \(radius) es de \(result)")

/** Ejercicio 5
 Crea una función que reciba un número y con la ayuda de un IF pinte en pantalla si el número
 es positivo, negativo o cero */

func positiveOrNegative(_ number:Int){
    if number > 0{
        print("Positivo")
    } else if number < 0{
        print("Negativo")
    }else{
        print("Es cero")
    }
}

/** Ejercicio 6
 Crea una función que reciba un número y con la ayuda de un SWITCH pinte en pantalla si el número
 es positivo, negativo o cero */

func positiveOrNegativeSwitch(_ number:Int){
    switch number{
    case let x where x > 0: print("Positivo")
    case let x where x < 0: print("Negativo")
    default:print("Es cero")
    }
}

//ARRAYS
var daysOfWeek:[String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]

print(daysOfWeek[3])
daysOfWeek[3] = "Juernes"
print(daysOfWeek[3])

print(daysOfWeek[0])
daysOfWeek.remove(at: 0)
print(daysOfWeek[0])

daysOfWeek.append("AristiDevs")

//BUCLES

var daysOfWeek2:[String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]

for day in daysOfWeek2{
    if day == "Jueves"{
        print("Está el jueves en el listado")
    }
}

var count = 0
while count < 10{
    print("Hola! soy un contador y valgo \(count)")
    count += 1
}

var count2 = 5
repeat {
    print("PEPE")
} while count2 < 0

for day in daysOfWeek2{
    if day == "Jueves"{
        print("Es jueves")
        break
    }else{
        print("NO es jueves")
    }
}

for day in daysOfWeek2{
    print("------------")
    if day == "Jueves"{
        print("Es jueves")
        continue
    }
    print("XXXXXXXXXXXXXX")
}

/** Ejercicio 7
 Escribe una función que reciba un númera e imprima su tabla de multiplicar del 1 al 10.
*/
func multiplication(_ number:Int){
    for i in 1...10{
        print("\(number) por \(i) es \(i*number)")
    }
}

multiplication(6)

/** Ejercicio 8
 Escribe un programa que calcule la suma de todos los números pares del 1 al 100 y muestre el resultado.
 Para saber si un número es par se tiene que dar la siguiente condificón (número % 2 == 0)
*/

var totalSum = 0
for i in 1...100{
    if(i % 2 == 0){
        totalSum += i
    }
}
print("El resultado es \(totalSum)")

var totalSum2 = 0
for i in 1...100{
    if(i % 2 != 0){
        continue
    }
    totalSum2 += i
}

print("El resultado2 es \(totalSum2)")

/** Ejercicio 9
 Escribe una función que cuente el número de vocales en una palabra y lo pinte.
 TIP: Las palabras (strings) puedes recorrerse con bucle for.
*/

func vocalCounter(_ text:String){
    var totalVocal:Int = 0
    for caracter in text{
        switch caracter.lowercased() {
        case "a", "e", "i", "o", "u": totalVocal += 1
        default: continue
        }
    }
    print("El número de vocales para \(text) es de \(totalVocal)")
}

vocalCounter("Aris")


//TUPLAS

var tupla = ("Aris", 31, true, "Calle mi casa", 666666666, 1.87)

print(tupla.4)


//Diccionarios

var dicc:[String: Any] = ["name": "Aris", "age": 31, "imHappy": true, "address": "Calle mi casa"]
var myDiccionaryName:String = dicc["name"] as? String ?? "Pepito"
print(myDiccionaryName)

for (key, value) in dicc{
    print("La clave \(key) contiene \(value)")
}

//NULLABILIDAD

var stringReal:String = "Loquesea"
var stringNil:String? = nil

print(stringReal)
print(stringNil)
 
func ejemploNil(_ text:String){
    //me da igual
}

ejemploNil(stringReal)
ejemploNil(stringNil ?? "ejemplo")
// ejemploNil(stringNil!)

func ejemploNil2(_ text:String?){
   
    if let example = text {
        print(example)
    }else{
        print("Introduce un nombre para continuar")
    }
    
    guard let example2 = text else {
        
        return
    }
    
    print("Hola \(example2)")
}

ejemploNil2(stringReal)
ejemploNil2(stringNil)

//CLASES

class Persona {
    
    var name:String
    var age:Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func greetings(){
        print("Hola, soy \(name) y tengo \(age) años.")
    }
    
}

var aris:Persona = Persona(name: "AristiDevs", age: 31)
var pepe:Persona = Persona(name: "Pepito", age: 86)

aris.greetings()
pepe.greetings()

struct ExampleStruct{
    var name:String
    var age:Int
}

var exampleStruct:ExampleStruct = ExampleStruct(name: "Aris", age: 31)
exampleStruct.age























