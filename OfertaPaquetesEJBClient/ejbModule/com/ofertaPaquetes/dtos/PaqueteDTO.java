package com.ofertaPaquetes.dtos;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


public class PaqueteDTO implements Serializable {

	private static final long serialVersionUID = 1L;

	 int idPaquete;
	 String nombre;
	 Date fechaDesde;
	 Date fechaHasta;
	 String descripcion;
	 Double precio;
	 String politicasCancelacion;
	 int cupo;
	 int cantPersonas;
	 boolean estado;
	 boolean nuevaOferta;
	 /*
	  *  List<ImagenDTO> imagenes;
	  *  AgenciaDTO agencia;
	  *  DestinoDTO destino;
	  *  List<TipoServicio> servicios;
	  * */
	 
	 
	public PaqueteDTO(String nombre, Date fechaDesde, Date fechaHasta, String descripcion, Double precio,
			String politicasCancelacion, int cupo, int cantPersonas, boolean estado, boolean nuevaOferta) {
		super();
		this.nombre = nombre;
		this.fechaDesde = fechaDesde;
		this.fechaHasta = fechaHasta;
		this.descripcion = descripcion;
		this.precio = precio;
		this.politicasCancelacion = politicasCancelacion;
		this.cupo = cupo;
		this.cantPersonas = cantPersonas;
		this.estado = estado;
		this.nuevaOferta = nuevaOferta;
	}
	public int getIdPaquete() {
		return idPaquete;
	}
	public void setIdPaquete(int idPaquete) {
		this.idPaquete = idPaquete;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Date getFechaDesde() {
		return fechaDesde;
	}
	public void setFechaDesde(Date fechaDesde) {
		this.fechaDesde = fechaDesde;
	}
	public Date getFechaHasta() {
		return fechaHasta;
	}
	public void setFechaHasta(Date fechaHasta) {
		this.fechaHasta = fechaHasta;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Double getPrecio() {
		return precio;
	}
	public void setPrecio(Double precio) {
		this.precio = precio;
	}
	public String getPoliticasCancelacion() {
		return politicasCancelacion;
	}
	public void setPoliticasCancelacion(String politicasCancelacion) {
		this.politicasCancelacion = politicasCancelacion;
	}
	public int getCupo() {
		return cupo;
	}
	public void setCupo(int cupo) {
		this.cupo = cupo;
	}
	public int getCantPersonas() {
		return cantPersonas;
	}
	public void setCantPersonas(int cantPersonas) {
		this.cantPersonas = cantPersonas;
	}
	public boolean isEstado() {
		return estado;
	}
	public void setEstado(boolean estado) {
		this.estado = estado;
	}
	public boolean isNuevaOferta() {
		return nuevaOferta;
	}
	public void setNuevaOferta(boolean nuevaOferta) {
		this.nuevaOferta = nuevaOferta;
	}
	  
	
	
	
	
	
}
