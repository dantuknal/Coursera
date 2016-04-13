import UIKit

/*

Tarea Semana 2 - Instrucciones:
Programa un playground que evalúe un rango de números en base a 4 reglas de impresión.
Generar un rango de 0 a 100, incluye el número 100 en el rango.
Tienes que iterar el rango completo, utilizando la sentencia for para obtener cada número del rango y aplicar las siguientes reglas de impresión.

Al evaluar cada número debes aplicar las siguientes reglas:
- Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
- Si el número es par, imprime: # el número + “par!!!”
- Si el número es impar, imprime: # el número + “impar!!!”
- Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”

+ Debes de usar la interpolación de variables para realizar la impresión de cada número.
+ La salida de mensajes debes tenerla en la consola.
+ El proyecto deberá estar en la cuenta de GitHub del alumno

*/

var numeros = 0...100                           //declaro variable con rango del 0 al 100 (incluidos)
                                                //(No se especifica en el enunciado nada sobre el 0 por eso lo incluí tambien)
var imprime : String                            //declaro variable que va a actualizarse e imprimir

let reglas = [                                  //declaro arreglo/constante con frases a interpolar
    "PAR!!!",
    "IMPAR!!!",
    "BINGO!!!",
    "VIVA SWIFT!!!"
]

for i in numeros{                               //ciclo for para iterar los elementos del rango
    
    imprime="# \(i)"                              //inicializo la variable con el numero de iteracion
    
    if i%2==0{                                  //Regla: Si es par
        imprime = "\(imprime) \(reglas[0])"
    } else {                                    //Regla: Si es impar
        imprime = "\(imprime) \(reglas[1])"
    }
    
    if i%5==0{                                  //Regla: Si es divisible por 5
        imprime = "\(imprime) \(reglas[2])"
    }
    
    if i>=30 && i<=40 {                         //Regla: Si está en un rango del 30 al 40 (incluidos)
        imprime = "\(imprime) \(reglas[3])"
    }
    
    print(imprime)                              //imprimo la variable resultante de las interpolaciones
    
}
