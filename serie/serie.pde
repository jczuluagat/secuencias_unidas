class Abundantes
{
//int n;
int xpos;
//int []serie;

  Abundantes(int x){
  //N=n;
  x=xpos;
  //tamano=tam;
  //arreglo= new int [60] ;
  }  
 
 boolean modulo(int numero){
 //numero=n;
 int div;
 int i;
 int aux=0;
 for(i=1; i<numero; i++){
   div=numero%i;
   if(div==0){
   aux=aux+i;
   }
 }
 return aux>numero;
 } 

int tamserie(int n)
{
  int tamano=0;
  for(int cont=0;cont<n;cont++)  
    if (modulo(cont))tamano++;
 
  return tamano;
}

void pintar(int x, int tamfig) 
{
  int radio = tamfig/2;//Radio de la figura (numero de figuras dividido 2)
  //int acumulado=0;
  //--------------------------------------------------------/
  //Variable auxiliar que va cambiando para redibujar y generar sensación visual de movimiento
  //Inicia en un valor aleatorio entre 0 y 360 para los colores
  float llenar = random(0, 255); 
  //-------------------------------------------------------/
  
  
  
  //--------------------------------------------------------/
  //Creamos un vector con el tamaño de la serie para un valor max de 360
  int t=tamserie(radio);
  int []serie;
  serie= new int [t] ;
  //--------------------------------------------------------/
    

  //Ciclo para dibujar
  int i,suma;//Variables para control de la serie
  suma=0;
  i=0;
  //gama=0;
  for (int cont=0 ; cont < radio; ++cont) // para que grafique de dentro hacia afuera
  {
    fill(llenar, 90, 90);//Definimos como queremos que se llene la figura.
    if (modulo(cont))
    {
      serie[i]=cont; // se llena el arreglo con la serie de números abundantes hasta el valor de "radio"
      print(serie[i],",");
      i++;
      //suma+=cont;
      suma+=1; //suma los numeros abundantes obtenidos
      ellipse(x, suma, cont/2, cont/2);//Graficamos una circunferencia con la serie obtenida que define el ancho y al alto 
  //ellipse(x,cont, cont, cont);  
  }
    else ellipse(4*suma, suma, cont, cont/2);//Graficamos un cono con base elíptica definido por los números no abundantes
    //ellipse(8*suma, cont, cont, cont/2);
    
    llenar = (llenar + 1) % 255;//Modificamos la variable llenar para que varíe el tono degradado (esta línea fué tomada directamente del ejemplo "radialGradient").
    
  }
}


}