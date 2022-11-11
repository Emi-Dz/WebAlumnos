/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import entity.Persona;
import entity.Usuario;
import java.util.List;

/**
 *
 * @author Juan Cruz
 */
public class ControllerData {
    
    UsuarioJpaController userJPA = new UsuarioJpaController();
    PersonaJpaController perJPA = new PersonaJpaController();
    
    public List<Usuario> traerUsuarios(){
    
        return userJPA.findUsuarioEntities();
   
    
    }
    public List<Persona> traerPersonas(){
    
        return perJPA.findPersonaEntities();
   
    
    }
    
    public void crearPersona (Persona persona){
        
        perJPA.create(persona);
        
    }
    
}
