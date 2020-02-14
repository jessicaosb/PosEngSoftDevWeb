/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws.org;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author mu04_labinfo4603
 */
@WebService(serviceName = "wssoma")
public class wssoma {


    /**
     * Operação de Web service
     */
    @WebMethod(operationName = "soma")
    public double soma(@WebParam(name = "x") double x, @WebParam(name = "y") double y) {
        //TODO write your implementation code here:
        return x+y;
    }
}
