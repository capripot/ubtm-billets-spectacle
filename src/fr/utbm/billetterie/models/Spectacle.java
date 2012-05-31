package fr.utbm.billetterie.models;

// Generated 26 mai 2012 16:34:23 by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Spectacle generated by hbm2java
 */
public class Spectacle implements java.io.Serializable {

	private int numSpect;
	private CategorieSpectacle categorieSpectacle;
	private String nomSpect;
	private Date dateDebutSpect;
	private Date dateFinSpect;
	private Set representations = new HashSet(0);
	private Set artistes = new HashSet(0);
	private Set publicites = new HashSet(0);
	private Set avoirs = new HashSet(0);

	public Spectacle() {
	}

	public Spectacle(int numSpect, CategorieSpectacle categorieSpectacle,
			String nomSpect, Date dateDebutSpect, Date dateFinSpect) {
		this.numSpect = numSpect;
		this.categorieSpectacle = categorieSpectacle;
		this.nomSpect = nomSpect;
		this.dateDebutSpect = dateDebutSpect;
		this.dateFinSpect = dateFinSpect;
	}

	public Spectacle(int numSpect, CategorieSpectacle categorieSpectacle,
			String nomSpect, Date dateDebutSpect, Date dateFinSpect,
			Set representations, Set artistes, Set publicites, Set avoirs) {
		this.numSpect = numSpect;
		this.categorieSpectacle = categorieSpectacle;
		this.nomSpect = nomSpect;
		this.dateDebutSpect = dateDebutSpect;
		this.dateFinSpect = dateFinSpect;
		this.representations = representations;
		this.artistes = artistes;
		this.publicites = publicites;
		this.avoirs = avoirs;
	}

	public int getNumSpect() {
		return this.numSpect;
	}

	public void setNumSpect(int numSpect) {
		this.numSpect = numSpect;
	}

	public CategorieSpectacle getCategorieSpectacle() {
		return this.categorieSpectacle;
	}

	public void setCategorieSpectacle(CategorieSpectacle categorieSpectacle) {
		this.categorieSpectacle = categorieSpectacle;
	}

	public String getNomSpect() {
		return this.nomSpect;
	}

	public void setNomSpect(String nomSpect) {
		this.nomSpect = nomSpect;
	}

	public Date getDateDebutSpect() {
		return this.dateDebutSpect;
	}

	public void setDateDebutSpect(Date dateDebutSpect) {
		this.dateDebutSpect = dateDebutSpect;
	}

	public Date getDateFinSpect() {
		return this.dateFinSpect;
	}

	public void setDateFinSpect(Date dateFinSpect) {
		this.dateFinSpect = dateFinSpect;
	}

	public Set getRepresentations() {
		return this.representations;
	}

	public void setRepresentations(Set representations) {
		this.representations = representations;
	}

	public Set getArtistes() {
		return this.artistes;
	}

	public void setArtistes(Set artistes) {
		this.artistes = artistes;
	}

	public Set getPublicites() {
		return this.publicites;
	}

	public void setPublicites(Set publicites) {
		this.publicites = publicites;
	}

	public Set getAvoirs() {
		return this.avoirs;
	}

	public void setAvoirs(Set avoirs) {
		this.avoirs = avoirs;
	}

}