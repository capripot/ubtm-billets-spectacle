package fr.utbm.billetterie.models;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Spectacle implements java.io.Serializable {
	
	private int id;
	private String nom;
	private Date date_debut;
	private Date date_fin;
	private Categorie categorie;
	private List<Genre> genres=new ArrayList<Genre>();
	private List<Artiste> artistes=new ArrayList<Artiste>();
	private List<Representation> representation=new ArrayList<Representation>();
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public Date getDate_debut() {
		return date_debut;
	}
	public void setDate_debut(Date date_debut) {
		this.date_debut = date_debut;
	}
	public Date getDate_fin() {
		return date_fin;
	}
	public void setDate_fin(Date date_fin) {
		this.date_fin = date_fin;
	}
	public Categorie getCategorie() {
		return categorie;
	}
	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}
	public List<Genre> getGenres() {
		return genres;
	}
	public void setGenres(List<Genre> genres) {
		this.genres = genres;
	}
	public List<Artiste> getArtistes() {
		return artistes;
	}
	public void setArtistes(List<Artiste> artistes) {
		this.artistes = artistes;
	}
	public List<Representation> getRepresentation() {
		return representation;
	}
	public void setRepresentation(List<Representation> representation) {
		this.representation = representation;
	}
	
	
}
