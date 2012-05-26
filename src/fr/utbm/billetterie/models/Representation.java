package fr.utbm.billetterie.models;

import java.util.Date;

public class Representation implements java.io.Serializable {
	private int numero;
	private Date date;
	private Date date_ouverture;
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getDate_ouverture() {
		return date_ouverture;
	}
	public void setDate_ouverture(Date date_ouverture) {
		this.date_ouverture = date_ouverture;
	}
	
	
	
}
