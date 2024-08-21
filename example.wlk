object pepita {
  var energia = 100 

  method energia() {
    return energia 
  } 

  method volar(distancia) { 
    energia = energia - (10 + distancia)
  }

  method comer(alimento) { 
    energia = energia + alimento.energiaQueAporta()
  }
}

object alpiste {
  method energiaQueAporta() { //getter
    return 20
  }
}

object manzana {
  var madurez = 1 
  const base = 5

  method madurez() {
    return madurez
  }

  method madurar() {
    self.madurez(madurez + 1) 
  }

  method madurez(_madurez) { //setter
    madurez = _madurez
  }

  method energiaQueAporta() { 
    return base * madurez 
  }
}

object pepon {
  var energia = 30

  method energia() {
    return energia
  }

  method comer(alimento) {
    energia = energia + (alimento.energiaQueAporta() / 2)
  }

  method volar(distancia) {
    energia = energia - 20 - (2*distancia)
  }
}

object roque {
  var ave = pepita
  var cenas = 0

  method ave() {
    return ave //getter
  }

  method cambiar(_ave) { //setter
    if (_ave!=ave) {
      ave = _ave
      cenas = 0 
    }
  }

  method alimentar(alimento) {
    ave.comer(alimento)
    cenas = cenas + 1
  }

  method cenas() { //getter (no hay setter de cenas porque no tendría sentido es este contexto)
    return cenas
  }
}