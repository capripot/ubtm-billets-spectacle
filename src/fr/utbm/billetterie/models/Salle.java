package fr.utbm.billetterie.models;

// Generated 26 mai 2012 13:57:02 by Hibernate Tools 3.4.0.CR1

import java.sql.Clob;
import java.util.HashSet;
import java.util.Set;

/**
 * Salle generated by hbm2java
 */
public class Salle implements java.io.Serializable {

	private int numSalle;
	private Region region;
	private String nomSalle;
	private Short numeroRueSalle;
	private String rueSalle;
	private int cpSalle;
	private String villeSalle;
	private long capaciteMaxSalle;
	private Clob descriptionSalle;
	private Set positions = new HashSet(0);
	private Set representations = new HashSet(0);
	private Set salleConfigurees = new HashSet(0);

	public Salle() {
	}

	public Salle(int numSalle, Region region, String nomSalle, String rueSalle,
			int cpSalle, String villeSalle, long capaciteMaxSalle) {
		this.numSalle = numSalle;
		this.region = region;
		this.nomSalle = nomSalle;
		this.rueSalle = rueSalle;
		this.cpSalle = cpSalle;
		this.villeSalle = villeSalle;
		this.capaciteMaxSalle = capaciteMaxSalle;
	}

	public Salle(int numSalle, Region region, String nomSalle,
			Short numeroRueSalle, String rueSalle, int cpSalle,
			String villeSalle, long capaciteMaxSalle, Clob descriptionSalle,
			Set positions, Set representations, Set salleConfigurees) {
		this.numSalle = numSalle;
		this.region = region;
		this.nomSalle = nomSalle;
		this.numeroRueSalle = numeroRueSalle;
		this.rueSalle = rueSalle;
		this.cpSalle = cpSalle;
		this.villeSalle = villeSalle;
		this.capaciteMaxSalle = capaciteMaxSalle;
		this.descriptionSalle = descriptionSalle;
		this.positions = positions;
		this.representations = representations;
		this.salleConfigurees = salleConfigurees;
	}

	public int getNumSalle() {
		return this.numSalle;
	}

	public void setNumSalle(int numSalle) {
		this.numSalle = numSalle;
	}

	public Region getRegion() {
		return this.region;
	}

	public void setRegion(Region region) {
		this.region = region;
	}

	public String getNomSalle() {
		return this.nomSalle;
	}

	public void setNomSalle(String nomSalle) {
		this.nomSalle = nomSalle;
	}

	public Short getNumeroRueSalle() {
		return this.numeroRueSalle;
	}

	public void setNumeroRueSalle(Short numeroRueSalle) {
		this.numeroRueSalle = numeroRueSalle;
	}

	public String getRueSalle() {
		return this.rueSalle;
	}

	public void setRueSalle(String rueSalle) {
		this.rueSalle = rueSalle;
	}

	public int getCpSalle() {
		return this.cpSalle;
	}

	public void setCpSalle(int cpSalle) {
		this.cpSalle = cpSalle;
	}

	public String getVilleSalle() {
		return this.villeSalle;
	}

	public void setVilleSalle(String villeSalle) {
		this.villeSalle = villeSalle;
	}

	public long getCapaciteMaxSalle() {
		return this.capaciteMaxSalle;
	}

	public void setCapaciteMaxSalle(long capaciteMaxSalle) {
		this.capaciteMaxSalle = capaciteMaxSalle;
	}

	public Clob getDescriptionSalle() {
		return this.descriptionSalle;
	}

	public void setDescriptionSalle(Clob descriptionSalle) {
		this.descriptionSalle = descriptionSalle;
	}

	public Set getPositions() {
		return this.positions;
	}

	public void setPositions(Set positions) {
		this.positions = positions;
	}

	public Set getRepresentations() {
		return this.representations;
	}

	public void setRepresentations(Set representations) {
		this.representations = representations;
	}

	public Set getSalleConfigurees() {
		return this.salleConfigurees;
	}

	public void setSalleConfigurees(Set salleConfigurees) {
		this.salleConfigurees = salleConfigurees;
	}

}
