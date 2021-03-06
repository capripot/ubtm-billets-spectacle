package fr.utbm.billetterie.models;

// Generated 26 mai 2012 16:34:23 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Position generated by hbm2java
 */
public class Position implements java.io.Serializable {

	private PositionId id;
	private Salle salle;
	private int capaciteDebout;
	private int capaciteAssise;
	private Set placeAssises = new HashSet(0);
	private Set configurerLibres = new HashSet(0);
	private Set salleConfigurees = new HashSet(0);
	private Set billetSpectacles = new HashSet(0);

	public Position() {
	}

	public Position(PositionId id, Salle salle, int capaciteDebout,
			int capaciteAssise) {
		this.id = id;
		this.salle = salle;
		this.capaciteDebout = capaciteDebout;
		this.capaciteAssise = capaciteAssise;
	}

	public Position(PositionId id, Salle salle, int capaciteDebout,
			int capaciteAssise, Set placeAssises, Set configurerLibres,
			Set salleConfigurees, Set billetSpectacles) {
		this.id = id;
		this.salle = salle;
		this.capaciteDebout = capaciteDebout;
		this.capaciteAssise = capaciteAssise;
		this.placeAssises = placeAssises;
		this.configurerLibres = configurerLibres;
		this.salleConfigurees = salleConfigurees;
		this.billetSpectacles = billetSpectacles;
	}

	public PositionId getId() {
		return this.id;
	}

	public void setId(PositionId id) {
		this.id = id;
	}

	public Salle getSalle() {
		return this.salle;
	}

	public void setSalle(Salle salle) {
		this.salle = salle;
	}

	public int getCapaciteDebout() {
		return this.capaciteDebout;
	}

	public void setCapaciteDebout(int capaciteDebout) {
		this.capaciteDebout = capaciteDebout;
	}

	public int getCapaciteAssise() {
		return this.capaciteAssise;
	}

	public void setCapaciteAssise(int capaciteAssise) {
		this.capaciteAssise = capaciteAssise;
	}

	public Set getPlaceAssises() {
		return this.placeAssises;
	}

	public void setPlaceAssises(Set placeAssises) {
		this.placeAssises = placeAssises;
	}

	public Set getConfigurerLibres() {
		return this.configurerLibres;
	}

	public void setConfigurerLibres(Set configurerLibres) {
		this.configurerLibres = configurerLibres;
	}

	public Set getSalleConfigurees() {
		return this.salleConfigurees;
	}

	public void setSalleConfigurees(Set salleConfigurees) {
		this.salleConfigurees = salleConfigurees;
	}

	public Set getBilletSpectacles() {
		return this.billetSpectacles;
	}

	public void setBilletSpectacles(Set billetSpectacles) {
		this.billetSpectacles = billetSpectacles;
	}

}
