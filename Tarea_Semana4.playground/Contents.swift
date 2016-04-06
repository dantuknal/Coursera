import UIKit

/*
Tarea Semana 4 - Velocimetro de un automóvil digital
*/

enum Velocidades : Int{                         //Declaro enumeración Velocidades con valores Int
    
    case Apagado=0,VelocidadBaja=20,VelocidadMedia=50,VelocidadAlta=120
    
    init( velocidadInicial : Velocidades ){     //Inicializo la enumeración
        
        self = velocidadInicial
        
    }
}

class Auto {                                    //Declaro la clase Auto
    
    var velocidad : Velocidades                 //declaro una instancia de la enumeración Velocidades
    
    init(){                                     //Inicializo la clase en Apagado
        
        self.velocidad = .Apagado
        
    }
    
    func cambioDeVelocidad( ) ->  ( actual: Int, velocidadEnCadena: String){    //Declaro función cambioDeVelocidad

        var velocidadEnCadena : String
        var actual : Int
        
        velocidadEnCadena=String(velocidad)     //asigno el valor actual de velocidad en string
        actual = self.velocidad.rawValue        //asigno el valor Int actual a una variable temporal
        
        switch self.velocidad.rawValue{         //Cambio el valor actual segun las instrucciones:
        case 0:
            self.velocidad = .VelocidadBaja     //Si esta en Apagado cambia a VelocidadBaja
        case 20:
            self.velocidad = .VelocidadMedia    //Si esta en VelocidadBaja cambia a VelocidadMedia
        case 50:
            self.velocidad = .VelocidadAlta     //Si esta en VelocidadMedia cambia a VelocidadAlta
        case 120:
            self.velocidad = .VelocidadMedia    //Si esta en VelocidadAlta cambia a VelocidadMedia
        default:
            self.velocidad = .Apagado           //Para hacer el switch exhaustivo
        }
        
        return (actual, velocidadEnCadena)      //Finalmente, devuelvo velocidad actual (Int,String)
        
    }
    
}

var auto = Auto()                               //Creo una instancia de la clase Auto

var velocidad : Int                             //Declaro variables de apoyo para la impresion en consola
var desc : String

for i in 1...20{                                //prueba de la clase Auto, iterando 20 veces (de 1 a 20)
    (velocidad,desc) = auto.cambioDeVelocidad() //el método cambioDeVelocidad()
    print ("\(velocidad), \(desc)")             //lo imprimo en consola
}
