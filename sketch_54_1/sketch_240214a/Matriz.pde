class Matriz {

  int[] posActual;
  int[][] MultMatrix;
  int dX;
  int dY;

  Matriz(int _dX, int _dY) {
    
    posActual = new int[3]; // Inicializa posActual
    posActual[0] = 0;
    posActual[1] = 0;
    posActual[2] = 0;

    
    dX = _dX; // Inicializa dX y dY
    dY = _dY;

    
    MultMatrix = new int[3][3]; // Inicializa MultMatrix
    MultMatrix[0][0] = 1;
    MultMatrix[0][1] = 0;
    MultMatrix[0][2] = dX;

    MultMatrix[1][0] = 0;
    MultMatrix[1][1] = 1;
    MultMatrix[1][2] = dY;

    MultMatrix[2][0] = 0;
    MultMatrix[2][1] = 0;
    MultMatrix[2][2] = 1;

    printMatrix();
  }


  public void setPosActual(int _x, int _y) {
    posActual[0] = _x;
    posActual[1] = _y;
    posActual[2] = 1;

  }


  private void printMatrix() {   // imprimir la matriz MultMatrix
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        println("MultMatrix[" + i + "][" + j + "] = " + MultMatrix[i][j]);
      }
    }
  }
  
  public int[] Trasladar(){
    int[] respuesta = new int[3];
    respuesta[0]=posActual[0]*MultMatrix[0][0]+posActual[1]*MultMatrix[0][1]+posActual[2]*MultMatrix[0][2];
    respuesta[1]=posActual[1]*MultMatrix[1][0]+posActual[1]*MultMatrix[1][1]+posActual[2]*MultMatrix[1][2];
    respuesta[2]=posActual[2]*MultMatrix[2][0]+posActual[1]*MultMatrix[2][1]+posActual[2]*MultMatrix[2][2];
    return respuesta;
  }
  
}
