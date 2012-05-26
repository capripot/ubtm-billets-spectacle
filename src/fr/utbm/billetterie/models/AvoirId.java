package fr.utbm.billetterie.models;

// Generated 26 mai 2012 13:57:02 by Hibernate Tools 3.4.0.CR1

/**
 * AvoirId generated by hbm2java
 */
public class AvoirId implements java.io.Serializable {

	private String nomGenre;
	private int numSpect;

	public AvoirId() {
	}

	public AvoirId(String nomGenre, int numSpect) {
		this.nomGenre = nomGenre;
		this.numSpect = numSpect;
	}

	public String getNomGenre() {
		return this.nomGenre;
	}

	public void setNomGenre(String nomGenre) {
		this.nomGenre = nomGenre;
	}

	public int getNumSpect() {
		return this.numSpect;
	}

	public void setNumSpect(int numSpect) {
		this.numSpect = numSpect;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AvoirId))
			return false;
		AvoirId castOther = (AvoirId) other;

		return ((this.getNomGenre() == castOther.getNomGenre()) || (this
				.getNomGenre() != null && castOther.getNomGenre() != null && this
				.getNomGenre().equals(castOther.getNomGenre())))
				&& (this.getNumSpect() == castOther.getNumSpect());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getNomGenre() == null ? 0 : this.getNomGenre().hashCode());
		result = 37 * result + this.getNumSpect();
		return result;
	}

}
