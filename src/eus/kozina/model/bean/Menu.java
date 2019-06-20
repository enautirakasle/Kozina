package eus.kozina.model.bean;

import java.util.ArrayList;

public class Menu {
	
	private int id;
	private ArrayList<Plato> primeros;
	private ArrayList<Plato> segundos;
	private ArrayList<Plato> postres;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public ArrayList<Plato> getPrimeros() {
		return primeros;
	}
	public void setPrimeros(ArrayList<Plato> primeros) {
		this.primeros = primeros;
	}
	public ArrayList<Plato> getSegundos() {
		return segundos;
	}
	public void setSegundos(ArrayList<Plato> segundos) {
		this.segundos = segundos;
	}
	public ArrayList<Plato> getPostres() {
		return postres;
	}
	public void setPostres(ArrayList<Plato> postres) {
		this.postres = postres;
	}
	
	public void addPrimerPlato(Plato plato) {
		this.primeros.add(plato);
	}
	
	public void addSegundoPlato(Plato plato) {
		this.segundos.add(plato);
	}
	
	public void addPostre(Plato plato) {
		this.postres.add(plato);
	}
	@Override
	public String toString() {
		//TODO hobetu
		return "Menu [id=" + id + ", primeros=" + primeros + ", segundos=" + segundos + ", postres=" + postres + "]";
	}
	
	
}
