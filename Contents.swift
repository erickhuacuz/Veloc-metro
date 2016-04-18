//: Playground - noun: a place where people can play
//: Erick Huacuz

import UIKit

 // Crea un playground que contenga los elementos para representar un velocímetro de un automóvil. Recuerda que estamos practicando la programación orientada a objetos y primero debes diseñar la clase, enumeraciones o estructuras para llevarlas a un aplicación móvil. ¿Qué debes de realizar?
 
 // Declara la enumeración: Velocidades, sus valores serán de tipo Int.
enum Velocidades : Int{
 // La enumeración Velocidades cuenta con los siguientes elementos y sus respectivos valores:
 //- Apagado = 0, representa la velocidad 0.
    case Apagado = 0
 //- VelocidadBaja = 20, representa una velocidad de 20km por hora.
    case VelocidadBaja = 20
 // - VelocidadMedia = 50, representa una velocidad de 50km por hora
    case VelocidadMedia = 50
 //- VelocidadAlta = 120, representa una velocidad de 50km por hora.
    case VelocidadAlta = 120

 //- Además, debes de declarar un inicializador que recibe un velocidad:
 //- init( velocidadInicial : Velocidades )
 
    init ( velocidadInicial : Velocidades){
        self = velocidadInicial
    }

    func velocidadEnCadena() -> String{
        switch self{
        case .Apagado:
            return "Apagado"
        case .VelocidadBaja:
            return "Velocidad Baja"
        case .VelocidadMedia:
            return "Velocidad Media"
        case .VelocidadAlta:
            return "Velocidad Alta"
        }
    }
}
 
 // Declara la clase: Auto
 // La clase Auto tiene los siguientes atributos:
 // - Una variable que sea una instancia de la enumeración Velocidades, llamada: velocidad.
 // Las funciones o métodos que define la clase Auto son las siguientes:
 // - init( ), agrega la función inicializadora que crea una instancia de Velocidades: velocidad, debe iniciar en Apagado. Recuerda que la enumeración tiene su función inicializadora.
 // - func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String), la función cambioDeVelocidad, cambia el valor de velocidad a la siguiente velocidad gradual, por ejemplo: Apagado cambia a VelocidadBaja, de VelocidadBaja cambia a VelocidadMedia, es decir cada ejecución cambia a la siguiente velocidad.. si llega a VelocidadAlta cambia a VelocidadMedia. Finalmente, la función debe regresar una tupla con la velocidad actual y una cadena con la leyenda de la velocidad correspondiente.

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String)
    {
        let velocidadActual = self.velocidad
        
        switch self.velocidad{
        case .Apagado:
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
        }
        
        return (velocidadActual.rawValue, velocidadActual.velocidadEnCadena())
    }
}

 // Pruebas de la clase:
 // - En el mismo playground prueba crea una instancia de la clase Auto, llamada auto.
 // - Itera 20 veces usando un for, llama a la función cambioDeVelocidad e imprime los valores de la tupla en la consola.

var auto : Auto = Auto()

auto.velocidad

for index in 1...20{
    var tupla = auto.cambioDeVelocidad()
    
    print("\(index). \(tupla.0), \(tupla.1)")
}

// - Una salida válida con cinco iteraciones es:
 
 // 0 , Apagado
 
 // 20, Velocidad baja
 
 // 50, Velocidad media
 
 // 120, Velocidad alta
 
 // 50, Velocidad media
 
 // 120, Velocidad alta
 
 // 50, Velocidad media
 
 // 120, Velocidad alta
 
 // 50, Velocidad media
 
 // … etc.

 
 







