/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import data.exceptions.NonexistentEntityException;
import entity.Persona;
import entity.Usuario;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Juan Cruz
 */
public class ControllerData {
    
    UsuarioJpaController userJPA = new UsuarioJpaController();
    PersonaJpaController perJPA = new PersonaJpaController();
    
    public void borrarPer (String id){
        try {
            perJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControllerData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Usuario> traerUsuarios(){
    
        return userJPA.findUsuarioEntities();
   
    
    }
    public List<Persona> traerPersonas(){
    
        return perJPA.findPersonaEntities();
   
    
    }
    
    public void crearPersona (Persona persona){
        
        perJPA.create(persona);
        
    }
    public void editPersona (Persona persona){
        try {
            perJPA.edit(persona);
        } catch (Exception ex) {
            Logger.getLogger(ControllerData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Persona buscarP (String id){
       return perJPA.findPersona(id);
    }
    
}
