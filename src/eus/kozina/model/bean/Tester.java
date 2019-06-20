package eus.kozina.model.bean;

public class Tester {

	public static void main(String[] args) {

		Receta r1 = new Receta("Salsa roqueford asado");
		r1.setId(1);
		r1.setElavoracion("elavoracion del pollo asado bla bla");
		
		Receta r2 = new Receta("txuleta erreta");
		r2.setId(2);
		r2.setElavoracion("ikatza ta egurre!");
		
		Plato p = new Plato();
		p.setId(1);
		p.setNombre("txuleta con salsa roqueford");
		p.addReceta(r1);
		p.addReceta(r2);
		
		System.out.println(p);

	}

}
