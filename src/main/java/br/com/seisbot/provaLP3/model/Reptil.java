package br.com.seisbot.provaLP3.model;

public class Reptil {

	private Long id;
	private String temperatura;
	private String tamanho;
	private boolean escama;
	
	public Reptil() {
		super();
	}
	
	public Reptil(String temperatura, String tamanho,  boolean escama) {
		super();
		this.temperatura = temperatura;
		this.tamanho = tamanho;
		this.escama = escama;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTemperatura() {
		return temperatura;
	}

	public void setTemperatura(String temperatura) {
		this.temperatura = temperatura;
	}

	public String getTamanho() {
		return tamanho;
	}

	public void setTamanho(String tamanho) {
		this.tamanho = tamanho;
	}

	public boolean isEscama() {
		return escama;
	}

	public void setEscama(boolean escama) {
		this.escama = escama;
	}

	

}
