package fr.utbm.billetterie.models;

// Generated 26 mai 2012 16:34:23 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Region generated by hbm2java
 */
public class Region implements java.io.Serializable {

	private String nomRegion;
	private Set salles = new HashSet(0);

	public Region() {
	}

	public Region(String nomRegion) {
		this.nomRegion = nomRegion;
	}

	public Region(String nomRegion, Set salles) {
		this.nomRegion = nomRegion;
		this.salles = salles;
	}

	public String getNomRegion() {
		return this.nomRegion;
	}

	public void setNomRegion(String nomRegion) {
		this.nomRegion = nomRegion;
	}

	public Set getSalles() {
		return this.salles;
	}

	public void setSalles(Set salles) {
		this.salles = salles;
	}
	
	public String toString(){
		return nomRegion;
	}

}
