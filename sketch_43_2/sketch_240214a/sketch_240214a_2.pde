
int a; //a
Humano h1;
Humano h2;
Nino n;


void setup() {

  h1 = new Humano("Carlos", "m");
  h2 = new Humano("Maria", "f");

  h1.puedesalircon(h2);

  h1.GetManos().Agarrar();
  n=new Nino("Carlitos");
  n.Jugar();

}
