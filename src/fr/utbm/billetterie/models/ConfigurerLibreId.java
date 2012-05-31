package fr.utbm.billetterie.models;

// Generated 26 mai 2012 16:34:23 by Hibernate Tools 3.4.0.CR1

/**
 * ConfigurerLibreId generated by hbm2java
 */
public class ConfigurerLibreId implements java.io.Serializable {

	private int numConfig;
	private int numSalle;
	private String nomPosition;
	private String libCat;

	public ConfigurerLibreId() {
	}

	public ConfigurerLibreId(int numConfig, int numSalle, String nomPosition,
			String libCat) {
		this.numConfig = numConfig;
		this.numSalle = numSalle;
		this.nomPosition = nomPosition;
		this.libCat = libCat;
	}

	public int getNumConfig() {
		return this.numConfig;
	}

	public void setNumConfig(int numConfig) {
		this.numConfig = numConfig;
	}

	public int getNumSalle() {
		return this.numSalle;
	}

	public void setNumSalle(int numSalle) {
		this.numSalle = numSalle;
	}

	public String getNomPosition() {
		return this.nomPosition;
	}

	public void setNomPosition(String nomPosition) {
		this.nomPosition = nomPosition;
	}

	public String getLibCat() {
		return this.libCat;
	}

	public void setLibCat(String libCat) {
		this.libCat = libCat;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ConfigurerLibreId))
			return false;
		ConfigurerLibreId castOther = (ConfigurerLibreId) other;

		return (this.getNumConfig() == castOther.getNumConfig())
				&& (this.getNumSalle() == castOther.getNumSalle())
				&& ((this.getNomPosition() == castOther.getNomPosition()) || (this
						.getNomPosition() != null
						&& castOther.getNomPosition() != null && this
						.getNomPosition().equals(castOther.getNomPosition())))
				&& ((this.getLibCat() == castOther.getLibCat()) || (this
						.getLibCat() != null && castOther.getLibCat() != null && this
						.getLibCat().equals(castOther.getLibCat())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getNumConfig();
		result = 37 * result + this.getNumSalle();
		result = 37
				* result
				+ (getNomPosition() == null ? 0 : this.getNomPosition()
						.hashCode());
		result = 37 * result
				+ (getLibCat() == null ? 0 : this.getLibCat().hashCode());
		return result;
	}

}