class Matriz {

  int[] posActual;
  int[][] MultMatrixT;
  int[][] MultMatrixS;
  int dX;
  int dY;

  Matriz(int _dX, int _dY, int _sX, int _sY) {
    
    posActual = new int[3]; // Inicializa posActual
    posActual[0] = 0;
    posActual[1] = 0;
    posActual[2] = 0;
    
    CreateTranslationMatrix(_dX,_dY);
    CreateScaleMatrix(_sX,_sY);
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
        println("MultMatrix[" + i + "][" + j + "] = " + MultMatrixT[i][j]);
      }
    }
  }
  
  void CreateTranslationMatrix(int _dX,int _dY){
    MultMatrixT = new int[3][3]; // Inicializa MultMatrix
    MultMatrixT[0][0] = 1;
    MultMatrixT[0][1] = 0;
    MultMatrixT[0][2] = dX;

    MultMatrixT[1][0] = 0;
    MultMatrixT[1][1] = 1;
    MultMatrixT[1][2] = dY;

    MultMatrixT[2][0] = 0;
    MultMatrixT[2][1] = 0;
    MultMatrixT[2][2] = 1;
  }
  
  
  void CreateScaleMatrix(int _sX,int _sY){
    
    MultMatrixS = new int[3][3]; // Inicializa MultMatrix
    MultMatrixS[0][0] = _sX;
    MultMatrixS[0][1] = 0;
    MultMatrixS[0][2] = 0;

    MultMatrixS[1][0] = 0;
    MultMatrixS[1][1] = _sY;
    MultMatrixS[1][2] = 0;

    MultMatrixS[2][0] = 0;
    MultMatrixS[2][1] = 0;
    MultMatrixS[2][2] = 1;
  }
  
  
  
  public int[] Trasladar(){
    int[] respuesta = new int[3];
    respuesta[0]=posActual[0]*MultMatrixT[0][0]+posActual[1]*MultMatrixT[0][1]+posActual[2]*MultMatrixT[0][2];
    respuesta[1]=posActual[1]*MultMatrixT[1][0]+posActual[1]*MultMatrixT[1][1]+posActual[2]*MultMatrixT[1][2];
    respuesta[2]=posActual[2]*MultMatrixT[2][0]+posActual[1]*MultMatrixT[2][1]+posActual[2]*MultMatrixT[2][2];
    return respuesta;
  }
  
  public int[] Escalar(){
    int[] respuesta = new int[3];
    respuesta[0]=posActual[0]*MultMatrixS[0][0]+posActual[1]*MultMatrixS[0][1]+posActual[2]*MultMatrixS[0][2];
    respuesta[1]=posActual[1]*MultMatrixS[1][0]+posActual[1]*MultMatrixS[1][1]+posActual[2]*MultMatrixS[1][2];
    respuesta[2]=posActual[2]*MultMatrixS[2][0]+posActual[1]*MultMatrixS[2][1]+posActual[2]*MultMatrixS[2][2];
    return respuesta;
  }
  
  
}
