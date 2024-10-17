object luke {
    var poder = 5
    var salud = 75
    var sable = sableVerde

    method nombre() = "Luke Skywalker"

    method poder() = poder

    method salud() = salud

    method entrenar(){
        salud += 25
        // if ("sableVerde" == sable ){
        //     poder += 5
        // } else {
        //     poder += 15 
        // }
        poder += sable.poderOtorga()
    }

    method sable(unSable){
        sable = unSable 
    }

    method esCampeon() = poder >= 30
}

object sableVerde {
  method poderOtorga() = 15
}

object sableAzul {
  method poderOtorga() = 25
}

object yoda {
    var poder = 50
    var salud = 30
    var usandoLaFuerza = false

    method nombre() = "Din Grogu"

    method poder() = poder

    method salud() = salud

    method entrenar(){
        if (usandoLaFuerza){
            poder *= 2
        } else {
            salud += 25
        }
    }

    method alternarLaFuerza(){
        usandoLaFuerza = !usandoLaFuerza 
    }

    method esCampeon() = true
  
}

object arturito {
    var salud = 50
    var cantidadReparaciones = 0

    method nombre() = "R2-D2"
    method poder() = 0.max(80 - cantidadReparaciones * 2)

    method salud() = salud

    method entrenar(){
        salud += 10
        cantidadReparaciones += 1
    }
    
    method esCampeon() = cantidadReparaciones.even()
  
}


object c3po {
    var capacidadReparacion = 3

    method nombre() = "C-3P0"

    method poder() = 30

    method salud() = 80

    method entrenar(){
        capacidadReparacion += 1
    }

    method esCampeon() = capacidadReparacion > self.poder() * 0.1
    
    method repararHalcon(){
        if (!self.esCampeon()){
            halconMilenario.mejorar(200)
            // halconMilenario.mejorarBlindaje(200)
            // halconMilenario.mejorarVelocidad(200)
        }else{
            halconMilenario.mejorar(100*capacidadReparacion)
            // halconMilenario.mejorarBlindaje(100*capacidadReparacion)
            // halconMilenario.mejorarVelocidad(100*capacidadReparacion)
        }
    }

    
}

object halconMilenario{
    var blindaje = 1000
    var velocidad = 500

    // method mejorarBlindaje(valor){
    //     blindaje += valor
    // }

    // method mejorarVelocidad(valor){
    //     velocidad += valor
    // }

    method mejorar(valor){
        blindaje += valor
        velocidad += valor
    }
}