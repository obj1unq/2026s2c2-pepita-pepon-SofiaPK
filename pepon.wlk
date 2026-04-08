//EJERCICIO 1: PEPON
object pepon{
    var energia = 30
    const joule = 2
    const gastoFijoDeEnergia = 20

    method energia() {
      return energia
    }   

    method comer(comida) {
      energia = energia + comida.energiaQueAporta() / 2 
      // se divide por 2 porque aprovecha solo la mitad de la energia que aporta el alimento
    }

    method volar(kilometros) {
      energia = energia - self.energiaQueGasta(kilometros)
    }

    method energiaQueGasta(kilometros) {
      return gastoFijoDeEnergia + (joule * kilometros)
    }
}

//EJERCICIO 2: REBECA
object rebeca {
  var ave = pepita
  var cantidadVecesAlimentada = 0 // esto es un contador?

  method aveActual() { // GETTER para saber cuál es su ave 
    return ave
  }

  method cambiarAve(_ave) { // SETTER porque el ave a veces es pepita y a veces es pepon
    ave = _ave
    cantidadVecesAlimentada = 0 
  }

  method alimentarAve(comida) { // 2. alimento al ave, ya sea pepita o pepon
    ave.comer(comida) // con .comer(comida) tengo POLIMORFISMO tanto pepita como pepon lo tienen 
    cantidadVecesAlimentada = cantidadVecesAlimentada + 1 // actualizo el contador
  }

  method cenas() { //otro GETTER
    return cantidadVecesAlimentada
  }
}





//pepita
object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia/10
	}

	method cansada() {
		return energia < 30
	}
	
	method energia() {
		return energia
	}
}
object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}