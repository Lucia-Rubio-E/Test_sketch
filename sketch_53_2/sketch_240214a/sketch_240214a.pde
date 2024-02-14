Matriz m;

void setup() {
  size(200, 200);
  m = new Matriz(2, 2);
}

class Matriz {

  private int[] posActual;
  int[][] MultMatrix;

  Matriz() {
    posActual = new int[3];
    posActual[0] = 0;
    posActual[1] = 0;
    posActual[2] = 0;
  }

  Matriz(int _x, int _y) {
    setPosActual(_x, _y);
  }

  public void setPosActual(int _x, int _y) {
    posActual[0] = _x;
    posActual[1] = _y;
    posActual[2] = 1;

    MultMatrix = new int[3][3];
    MultMatrix[0][0] = 1;    // MultMatrix[verticales][horizontales]
    MultMatrix[0][1] = 0;
    MultMatrix[0][2] = _x;   // la cantidad que quiero mover (desplazamiento en x)

    MultMatrix[1][0] = 0;
    MultMatrix[1][1] = 1;
    MultMatrix[1][2] = _y;   // la cantidad que quiero mover (desplazamiento en y)

    MultMatrix[2][0] = 0;
    MultMatrix[2][1] = 0;
    MultMatrix[2][2] = 1;

    }
}
