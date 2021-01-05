/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author El benévolo señor Arciniegas <Anarchy Framework>
 */
public class Persona {
    
    private int Id;
    private String DNI;
    private String nombres;

    public Persona() {
    }

    public Persona(int Id, String DNI, String nombres) {
        this.Id = Id;
        this.DNI = DNI;
        this.nombres = nombres;
    }
    
    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    
    
}
