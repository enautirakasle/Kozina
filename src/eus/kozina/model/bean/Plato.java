package eus.kozina.model.bean;

import java.util.ArrayList;

public class Plato {
	private int id;
	private String nombre;
	private String descripcion;
	private boolean en_carta;
	private boolean en_menu;

	private ArrayList<Receta> recetas;
}
