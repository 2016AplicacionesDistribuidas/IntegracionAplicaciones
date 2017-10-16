package com.ofertaPaquetes.sessionBeans;

import javax.ejb.LocalBean;
import javax.ejb.Stateful;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.ofertaPaquetes.entities.Paquete;
import com.ofertaPaquetes.interfaces.AdministradorPaqueteLocal;
import com.ofertaPaquetes.interfaces.AdministradorPaqueteRemote;

/**
 * Session Bean implementation class AdministradorTareas
 */
@Stateful
public class AdministradorPaquete implements AdministradorPaqueteRemote, AdministradorPaqueteLocal {

	@PersistenceContext(unitName="MyPU")
	private EntityManager manager;
    
	public AdministradorPaquete() {
        // TODO Auto-generated constructor stub
    }
	
	public void nuevoPaquete(){
		Paquete tarea = new Paquete("Paquete A");
		try{
			manager.persist(tarea);
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("Conectandose a "+ e.getMessage());
		}
	}

}
