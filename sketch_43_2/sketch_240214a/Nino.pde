class Nino extends Humano {

  Nino(String _nombre) {
    super(_nombre, "m"); 
  }

  public void Jugar() {
    println(GetNombre() + " está jugando");
  }
}
