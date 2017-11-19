/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import java.util.HashMap;

/**
 *
 * @author Yasmin
 */
public class VariablesSesion {
    public HashMap<String, String> usuarios;

    public VariablesSesion() {
        usuarios = new HashMap<>();
        
        usuarios.put("GabrielSoto", "2703");
        usuarios.put("MagaliPacheco", "1802");
        usuarios.put("YasminCueva", "0305");
        usuarios.put("LeonelZambroni", "2502");
    }

    public HashMap<String, String> getUsuarios() {
        return usuarios;
    }
    
    
    
}
