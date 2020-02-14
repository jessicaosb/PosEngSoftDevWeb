
package ws.org;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Classe Java de soma complex type.
 * 
 * <p>O seguinte fragmento do esquema especifica o conteúdo esperado contido dentro desta classe.
 * 
 * <pre>
 * &lt;complexType name="soma">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="x" type="{http://www.w3.org/2001/XMLSchema}double"/>
 *         &lt;element name="y" type="{http://www.w3.org/2001/XMLSchema}double"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "soma", propOrder = {
    "x",
    "y"
})
public class Soma {

    protected double x;
    protected double y;

    /**
     * Obtém o valor da propriedade x.
     * 
     */
    public double getX() {
        return x;
    }

    /**
     * Define o valor da propriedade x.
     * 
     */
    public void setX(double value) {
        this.x = value;
    }

    /**
     * Obtém o valor da propriedade y.
     * 
     */
    public double getY() {
        return y;
    }

    /**
     * Define o valor da propriedade y.
     * 
     */
    public void setY(double value) {
        this.y = value;
    }

}
