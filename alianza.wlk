object alianza {
  const property guerreros = []
  
  method reclutar(unGuerrero) {
    if ((unGuerrero.salud() > 50) && (unGuerrero.poder() >= 25)) guerreros.add(
        unGuerrero
    )
  }
  
  method entrenarUnGuerrero(unGuerrero) {
    unGuerrero.entrenar()
  }
  
  method entrenarEjercito() {
    guerreros.forEach({ guerrero => self.entrenarUnGuerrero(guerrero) })
  }
  
  // method entrenarEjercito(){
  //   guerreros.forEach({guerrero => guerrero.entrenar()})
  // }
  method cantidadGuerreros() = guerreros.size()
  
  method poderTotalEjercito() =
    guerreros.sum({ g => g.poder() + 25 })
  
  method esInvencible() = self.tieneUnPoderSuperiorA50() || self.tieneAlMenosUnGuerreroCampeon()
  
  method tieneUnPoderSuperiorA50() = guerreros.all({ g => g.poder() > 50 })
  
  method tieneAlMenosUnGuerreroCampeon() = guerreros.any({ g => g.esCampeon() })
  
  method guerrerosDebiles(unaSalud) = guerreros.filter(
    { g => g.salud() <= unaSalud }
  )

  method ganarBatalla(unValor) =
     self.poderTotalEjercito() > unValor
  
  method tienePocaSaludYMuchoPoder() = 
  self.guerreroMenorSalud().poder() > self.guerreroMayorSalud().poder()
//juan.poder()

  method guerreroMenorSalud() = //[juan,pepe,lucas]
  guerreros.min( { g=> g.salud()})
//juan
  method guerreroMayorSalud() = //[juan,pepe,lucas]
  guerreros.max( { g=> g.salud()})
//lucas

method listaDeNombres() {
    return self.guerrerosCampeones().map({g=> g.nombre()})
}

method guerrerosCampeones(){
  return guerreros.filter({g=> g.esCampeon()})
}
}


