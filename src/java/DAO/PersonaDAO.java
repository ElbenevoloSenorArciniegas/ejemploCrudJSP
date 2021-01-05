/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import modelo.Persona;

/**
 *
 * @author El benévolo señor Arciniegas <Anarchy Framework>
 */
public class PersonaDAO {
    
    private static ArrayList<Persona> personas = init();
    
    private static ArrayList<Persona> init(){
        ArrayList<Persona> p = new ArrayList<>();
        p.add(new Persona(0,"1029","Perdo Páramo"));
        p.add(new Persona(1,"1030","Juan Rulfo"));
        return p;
    }
    
    public static ArrayList<Persona> listar(){
        return personas;
    }
    
    public static void insertar(String DNI, String nombres){
        int id = personas.size();
        personas.add(new Persona(id, DNI, nombres));
    }
    
    public static Persona get(int Id){
        return personas.get(Id);
    }
    
    public static void update(int Id, String DNI, String nombres){
        Persona persona = personas.get(Id);
        persona.setDNI(DNI);
        persona.setNombres(nombres);
    }
}
