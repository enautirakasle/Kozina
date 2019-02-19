package eus.kozina.model.bean;

public class Ingrediente {
	private int cantidad;
	private Alimento alimento;
	private Plato plato;

	public Ingrediente() {

	}

	public Ingrediente(int cantidad, Alimento alimento, Plato plato) {
		super();
		this.cantidad = cantidad;
		this.alimento = alimento;
		this.plato = plato;
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

	public Plato getPlato() {
		return plato;
	}

	public void setPlato(Plato plato) {
		this.plato = plato;
	}

}
