int nfig, tamfig;//Ajusta el tamaño de las figuras que se quieren ver en pantalla
Abundantes ab1;

void setup() {
   
  size(200,200);//Definimos el tamaño de la ventana gráfica (alargada porque son varias figuras)(ancho, alto)
  colorMode(HSB, 255, 100, 100);//escogemos los rangos de matiz, saturación y brillo
  ellipseMode(CORNER);//Definimos la posición desde la cual se ejecutará el draw(desde donde pintar)
  frameRate(10);//Esta función controla la velocidad de actualización o ejecución de la gráfica
  nfig=1;
  tamfig = width/nfig;//Escogemos la cantidad de figuras = 2
  ab1= new Abundantes(tamfig);
      }
void draw() 
{
  background(65,31,0);//Escogemos el color para el fondo de la pantalla color(matiz), saturación y brillo
  for (int posx = 0; posx <= width; posx+=tamfig) //Delimitamos el tamaño de nuestras figuras 
  {
    ab1.pintar(posx, tamfig);//es nuestra función de graficar, le enviamos la posición a graficar en x
  } 
}