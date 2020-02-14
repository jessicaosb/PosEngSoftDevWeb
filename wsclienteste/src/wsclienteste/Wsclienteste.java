/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wsclienteste;

/**
 *
 * @author mu04_labinfo4603
 */
import ws.org.*;
import javax.swing.JOptionPane;

public class Wsclienteste {

    /**
     * @param args the command line arguments
     */
    
    
    public static void main(String[] args) {
        // TODO code application logic here
        
        Wssoma_Service servico = new Wssoma_Service();
        Wssoma porta = servico.getWssomaPort();
        
        double resposta = porta.soma(3, 2);
        JOptionPane.showMessageDialog(null, resposta);
        
    }
    
}
