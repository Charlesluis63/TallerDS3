import javax.swing.JFrame;
import javax.swing.JLabel;

public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrirá la llamada al inicio de sesión.
    pointcut validar(): call(* consultar (..)); 
  //Advices. Se ejecutarán en el lugar indicado por el pointcut.
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