package fr.utbm.billetterie.models;

// Generated 26 mai 2012 16:34:23 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Client generated by hbm2java
 */
public class Client implements java.io.Serializable {

	private String emailClient;
	private String nomClient;
	private String prenomClient;
	private short numRueClient;
	private String rueClient;
	private int cpClient;
	private String villeClient;
	private String password;
	private boolean administrateur;
	private Set reservations = new HashSet(0);

	public Client() {
	}

	public Client(String emailClient, String nomClient, String prenomClient,
			short numRueClient, String rueClient, int cpClient,
			String villeClient, String password, boolean administrateur) {
		this.emailClient = emailClient;
		this.nomClient = nomClient;
		this.prenomClient = prenomClient;
		this.numRueClient = numRueClient;
		this.rueClient = rueClient;
		this.cpClient = cpClient;
		this.villeClient = villeClient;
		this.password = password;
		this.administrateur = administrateur;
	}

	public Client(String emailClient, String nomClient, String prenomClient,
			short numRueClient, String rueClient, int cpClient,
			String villeClient, String password, boolean administrateur,
			Set reservations) {
		this.emailClient = emailClient;
		this.nomClient = nomClient;
		this.prenomClient = prenomClient;
		this.numRueClient = numRueClient;
		this.rueClient = rueClient;
		this.cpClient = cpClient;
		this.villeClient = villeClient;
		this.password = password;
		this.administrateur = administrateur;
		this.reservations = reservations;
	}

	public String getEmailClient() {
		return this.emailClient;
	}

	public void setEmailClient(String emailClient) {
		this.emailClient = emailClient;
	}

	public String getNomClient() {
		return this.nomClient;
	}

	public void setNomClient(String nomClient) {
		this.nomClient = nomClient;
	}

	public String getPrenomClient() {
		return this.prenomClient;
	}

	public void setPrenomClient(String prenomClient) {
		this.prenomClient = prenomClient;
	}

	public short getNumRueClient() {
		return this.numRueClient;
	}

	public void setNumRueClient(short numRueClient) {
		this.numRueClient = numRueClient;
	}

	public String getRueClient() {
		return this.rueClient;
	}

	public void setRueClient(String rueClient) {
		this.rueClient = rueClient;
	}

	public int getCpClient() {
		return this.cpClient;
	}

	public void setCpClient(int cpClient) {
		this.cpClient = cpClient;
	}

	public String getVilleClient() {
		return this.villeClient;
	}

	public void setVilleClient(String villeClient) {
		this.villeClient = villeClient;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isAdministrateur() {
		return this.administrateur;
	}

	public void setAdministrateur(boolean administrateur) {
		this.administrateur = administrateur;
	}

	public Set getReservations() {
		return this.reservations;
	}

	public void setReservations(Set reservations) {
		this.reservations = reservations;
	}

}
