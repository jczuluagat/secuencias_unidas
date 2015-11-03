class Padovan extends Sequence{

 /*--------------------Autor y Descripción--------------------------------------------*/
String author(){
return "Richard Padovan nacio en 1935, es un arquitecto, matemático, autor, traductor y profesor del Reino Unido." ;} 

String description(){
  return " Es la secuencia de numeros enteros definida por los valores iniciales p(0) = p(1) = p(2) " + "y la relación de recurrencia p(n)= p(n-2) = p(n-3)" ;
}  
  
/*-----------------------------IDENTIFICANDO NÚMEROS DE LA SECUENCIA-------------------*/  
int modulo(int i){
  
 if(i<3){     
    return 1;
  } else {
       return modulo(i-2)+modulo(i-3);  
  }
}

/*-------------------- SE CONSIGUE EL N-ÉSIMO TÉRMINO-------------------------------------*/

 
int compute(int n){
    
  int[] padovan = new int[60];
 
    int t=60;
    
    int []serie;
    serie= new int [t] ;
 
  for (int i=0 ; i< serie.length ; ++i) 
  {
      padovan[i] = modulo(i); // se llena el arreglo con la serie de números hasta el valor de "t" definido
     //print(serie[i],",");     

  }
  
  return padovan[n-1];
  }

/*--------- MUESTRA LA SECUENCIA DE NÚMEROS--------------------------*/

     void display(int k, int b){
       
   int[] padovan= new int[30];
   
   for (int i=0 ; i< padovan.length ; ++i) 
  {
      padovan[i] = modulo(i);    

  }
       
        for (int i = 20; i > 0  ;  i--)
        {       
  
     float c = 2; 
       
    fill( 255*c%360, 100, Xcentro()  ); 
          
  triangle( Xcentro() - b*padovan[i],  Ycentro() - b*padovan[i]  , Xcentro()  + b* padovan[i]  ,  Ycentro() - b*padovan[i]  ,   Xcentro() ,  Ycentro()  );  
                   
  triangle( Xcentro() + b*padovan[i],  Ycentro() + b*padovan[i]  ,  Xcentro()  - b* padovan[i]  ,  Ycentro() + b*padovan[i]  ,   Xcentro() ,  Ycentro() );  
          
  triangle( Xcentro() - b*padovan[i],  Ycentro()+ b*padovan[i]  ,  Xcentro()  - b* padovan[i]  , Ycentro()- b*padovan[i]  ,   Xcentro() ,  Ycentro()  );  

  triangle( Xcentro() + b*padovan[i]   ,  Ycentro() + b*padovan[i]  ,  Xcentro() + b* padovan[i],  Ycentro() - b*padovan[i]  ,   Xcentro() ,  Ycentro() );  
   
     
   
       }
     
   }
       
      }