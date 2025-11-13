class Personaje{
    
    var rol 
    var fuerza
    var inteligencia

    
    method fuerza() {return fuerza}
    method inteligencia(){return inteligencia}
    method rol(){return rol}
    method rol(nuevoRol){ rol=nuevoRol }

    method potencialOfensivo()
    method esInteligente()
    method esGrosoEnRol()
    method esGroso() {return self.esInteligente() or self.esGrosoEnRol()}

    
}

class Orco inherits Personaje{
    override method esInteligente() = false
    override method esGrosoEnRol() {return rol.esGroso()}
    override method potencialOfensivo(){return self.fuerza()*10*1.1}
}

class Humano inherits Personaje{
    override method esInteligente() {return self.inteligencia()>50}
    override method esGrosoEnRol() {return rol.esGroso(self)}
override method potencialOfensivo(){return self.fuerza()*10 + self.rol().extraPotencial()}
}


object guerrero{
      method esGroso(unPersonaje) {return unPersonaje.fuerza() > 50}

method extraPotencial()=100
}

object cazador{
var mascota=null

method esGroso(unPersonaje){return mascota.esLongeva()}

method mascota(){return mascota}

method mascota(nuevaMascota){mascota=nuevaMascota}
method extraPotencial()=mascota.potencial()
}

object brujo{

method esGroso(unPersonaje){return true}

method extraPotencial()=0
}

class Mascota{
const tieneGarras
const edad 
const fuerza

method tieneGarras(){return tieneGarras}
method edad(){return edad}
method fuerza(){return fuerza}

method potencial(){if (tieneGarras){return self.fuerza()*2}
                else{return self.fuerza()}}

method esLongeva(){return self.edad()>10}
}


class Localidad{
var ejercito=[]
}

class Ciudad inherits Localidad {

}

class Aldea inherits Localidad{
var maxHabitantes 


}