class Humano {

  private int numOjos;
  private int numNariz;
  private int numBoca;
  private String nombre;
  private float altura;
  private String sexo;
  private Mano manos;
  private int numManos;

  Humano(String _nombre, String _sexo) {

    numOjos = 2;
    numNariz = 1;
    numBoca = 1;
    nombre = _nombre;
    sexo = _sexo;
    altura = random(1.5, 2.0);
    manos = new Mano();
    numManos = manos.GetNumManos();

  }

  public void Dormir() {
    println(nombre + " está durmiendo");
  }

  public String GetNombre() {
    return nombre;
  }

  public void SetNombre(String _nombre) {
    nombre = _nombre;
  }

  public int getnumojos() {
    return numOjos;
  }

  public void setnumojos(int _numOjos) {
    numOjos = _numOjos;
  }

  public String getsexo() {
    return sexo;
  }

  public Mano GetManos() {
    return manos;
  }

  public void puedesalircon(Humano _h) {
    if (sexo.equals("m") && _h.getsexo().equals("f")) {
      println("si pueden salir");
    } else if (sexo.equals("f") && _h.getsexo().equals("m")) {
      println("si pueden salir");
    } else {
      println("no pueden salir");
    }
  }

}
