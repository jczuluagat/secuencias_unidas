// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {
   int n,yPos,xPos;
  /**
   * The sequence author
   */
  abstract String author();
  
  /**
   * The sequence description
   */
  abstract String description();
  
  /**
   * Computes the nth sequence term
   */
  abstract int compute(int n);
  
  /**
   * Returns the first n seq terms as an array.
   */
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
    return seq;
  }
  

  // All display functions must scale the canvas properly
  
  /**
   * Display n seq terms as you wish
   */
  abstract void display(int n, int tamfig);
     
  //////////////////////////////////////////////////////////////////
  
  void centro2(int x){  
  xPos = x; }
  
  void centro1(int y){ 
    yPos = y; 
   }
   
  int Ycentro(){
  return yPos; 

  }
  
  int Xcentro(){ 
    return xPos;
  }
     
}