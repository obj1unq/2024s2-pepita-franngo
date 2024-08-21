object pepita {
  var energia = 100 //atributo de pepita

  method energia() {
    return energia //devuelve el valor del atributo energia
  } 

  method volar(distancia) { //minutes es parámetro del método fly
    energia = energia - (10 + distancia)
  }

  method comer(alimento) { //y pasarías el obj alpiste como parámero
    energia = energia + alimento.energiaQueAporta()
  }
}

object alpiste {
  method energiaQueAporta() { //getter
    return 20
  }
}

object manzana {
  var madurez = 1 //atributo de obj manzana
  const base = 5

  method madurez() {
    return madurez
  }

  method madurar() {
    self.madurez(madurez + 1) //SIEMPRE escribimos self cuando queremos referenciarnos a nosotros
                              //mismos (el propio objeto)
                              //podría ser madurez = madurez + 1 ??, pero directamente llamamos al setter
  }

  method madurez(_madurez) { //setter
    madurez = _madurez
  }

  method energiaQueAporta() { //getter
                              //este método debe llamarse igual al del objeto alpiste, así,
                              //cuando se pase un obj por parámetro a comer, se podrá llamar
                              //al método energiaQueAporta, no importa cual de los 2 objs sea.
                              //En estructurada no se podría (solo podría haber un energiaQueAporta)
                              //El parámetro se usa de forma POLIMÓRFICA
    return base * madurez //podemos declarar const base = 5 y usar acá base en vez de 5
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
      cenas = 0 //cuando se le cambia el ave a roque, se setea cenas a 0
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