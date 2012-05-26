package fr.utbm.billetterie.models;

import java.util.ArrayList;
import java.util.List;

public class Categorie implements java.io.Serializable {
	private String nom;
	private List<Spectacle> spectacles=new ArrayList<Spectacle>();
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public List<Spectacle> getSpectacles() {
		return spectacles;
	}
	public void setSpectacles(List<Spectacle> spectacles) {
		this.spectacles = spectacles;
	}
	
}
