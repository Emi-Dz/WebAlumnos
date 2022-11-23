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
public class ControllerMaster {
    
    
    ControllerData ctrldata = new ControllerData ();
    
    public boolean verificarUsuario(String usuario, String password){
    
        List<Usuario> listaUsuarios = ctrldata.traerUsuarios();
        
        if(listaUsuarios != null){
            for(Usuario us : listaUsuarios){
            
                if(us.getNombreUsuario().equals(usuario) 
                        && 
                   us.getPassword().equals(password)){
                
                    return true;
                }
            
            }      
        }
        return false;
    }
    public List<Persona> traerPersona(){
        return  ctrldata.traerPersonas();
    }
    public void agregarPersona (Persona p){
        ctrldata.crearPersona(p);
    }
    public void borrarPersona (String id){
        ctrldata.borrarPer(id);
    }
    public void editarPersona (Persona per){
        ctrldata.editPersona(per);
}
    public Persona buscarPersona (String id){
        return ctrldata.buscarP(id);
    }
}
