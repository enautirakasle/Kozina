package eus.kozina.model.bean;

public class Ingrediente {
	private int id;
	private int cantidad;
	private Alimento alimento;
	private Receta receta;

	public Ingrediente() {

	}

	public Ingrediente(int cantidad, Alimento alimento, Receta receta) {
		super();
		this.cantidad = cantidad;
		this.alimento = alimento;
		this.receta = receta;
	}
	
	public Ingrediente(int cantidad, Alimento alimento) {
		super();
		this.cantidad = cantidad;
		this.alimento = alimento;
	}
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public Alimento getAlimento() {
		return alimento;
	}

	public void setAlimento(Alimento alimento) {
		this.alimento = alimento;
	}

	public Receta getReceta() {
		return receta;
	}

	public void setReceta(Receta receta) {
		this.receta = receta;
	}

}
