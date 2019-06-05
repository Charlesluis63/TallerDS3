import javax.swing.JFrame;
import javax.swing.JLabel;

public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrir� la llamada al inicio de sesi�n.
    pointcut validar(): call(* consultar (..)); 
  //Advices. Se ejecutar�n en el lugar indicado por el pointcut.
   void around() : validar() {
        if(!IniciarSesion.sesionIniciada) {
        	IniciarSesion.initialize();
        	
        }
        else {
        	proceed();
        }
    } 
    after() : validar()  {
   
    	
        
    }  
}