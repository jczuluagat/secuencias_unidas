// Object declaration
Sequence sequence;
int nfig, tamfig;
PFont f;
boolean padovan;

void setup() {
  nfig=1;
    tamfig = width/nfig;//Escogemos la cantidad de figuras = 2
  ellipseMode(CORNER);//Definimos la posición desde la cual se ejecutará el draw(desde donde pintar)
    frameRate(10);
  size(900, 900);//Definimos el tamaño de la ventana gráfica (alargada porque son varias figuras)(ancho, alto)
  colorMode(HSB, 255, 100, 100);//escogemos los rangos de matiz, saturación y brillo
  sequence = new Abundantes();
  sequence.compute(10);
  
 print(sequence.compute(10),",\n",sequence.author());
 print("\n",sequence.description());
}

void draw() {
  if(padovan = true){
    
      
     background(0,0,0);//Escogemos el color para el fondo de la pantalla color(matiz), saturación y brillo
  for (int posx = 0; posx <= width; posx+=tamfig) //Delimitamos el tamaño de nuestras figuras 
  {
    sequence.display(0, 900);//es nuestra función de graficar, le enviamos la posición a graficar en x
  }  
  }
  
  
    
   f = createFont("Arial",45,true);
 
  sequence.centro1(mouseY);
  sequence.centro2(mouseX);
  sequence.display(10,10);
     
  fill(0);
  text(+mouseX, 30,30  );               
     
  fill(0);
  text(+mouseY, 60,30  );
  
  
 fill(255);
 text(sequence.author(), 30,550);
 text(sequence.description(),30,590 );
 
   
}
/* ---------------- HACER DOBLE Ó TRIPLE CLICK DEL MOUSE PARA CAMBIAR MUESTRA GRÁFICA DE CADA SERIE-------*/   
void mousePressed() {

  padovan = !padovan;
   sequence = padovan ? new Padovan() : new Abundantes();
      
}   
   
  
    
     
  
 
    

    