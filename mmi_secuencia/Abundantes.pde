class Abundantes extends Sequence{

  

/*--------------------Autor y Descripción--------------------------------------------*/
String author(){
return "Autor de la Serie Números Abundantes: Hipócrates fué el primero en utilizar este tipo de números, sin embargo,  no existe un autor claramente definido. ";} 

String description(){
  return "Descripción: Los números abundantes son todos aquellos números que cuyos divisores suman un número mayor que ellos.";
}  
  
/*-----------------------------IDENTIFICANDO ABUNDANTES-------------------*/  
boolean modulo(int n){
 int div;
 int i;
 int aux=0;

  for(i=1;i<n;i++)
 {
   div=n%i;
   if(div==0)
   {
     aux=aux+i;
   } 
}
 return aux>n;
}

/* ------------------TAMAÑO SERIE-------------------------*/
int tamserie(int n)
{
  int tamano=0;
  for(int cont=0;cont<n;cont++)  
    if (modulo(cont))tamano++;
 
  return tamano;
}
/*-------------------- SE CONSIGUE EL N-ÉSIMO TÉRMINO-------------------------------------*/

int compute(int n){
    int i;//Variables para control de la serie
        i=0;
    int t=tamserie(1000);
    int []serie;
    serie= new int [t] ;
 
  for (int cont=0 ; cont < t; ++cont) 
  {
    if (modulo(cont))
    {
      serie[i]=cont; // se llena el arreglo con la serie de números abundantes hasta el valor de "t" definido
     //print(serie[i],",");     
  i++;  
    }  
  }
  return serie[n-1];
  }

/*--------- MUESTRA LA SECUENCIA DE NÚMEROS ABUNDANTES (CONO BASE CIRCULAR) Y SUMA DE NO ABUNDANTES (BASE ELÍPTICA)--*/

  void display(int x, int tamfig){
int i,suma;//Variables para control de la serie
  suma=0;
  i=0;
  
  float llenar = random(0, 255);
  
  int radio = tamfig/2;
  
  int t=tamserie(radio);
  int []serie;
  serie= new int [t] ;
 
  for (int cont=0 ; cont < radio; ++cont) // para que grafique de dentro hacia afuera
  {
    fill(llenar, 90, 90);
    if (modulo(cont))
    {
      serie[i]=cont; // se llena el arreglo con la serie de números abundantes hasta el valor de "radio"
      //print(serie[i],",");
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