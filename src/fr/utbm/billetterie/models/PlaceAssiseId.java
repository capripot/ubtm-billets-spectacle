package fr.utbm.billetterie.models;

// Generated 26 mai 2012 13:57:02 by Hibernate Tools 3.4.0.CR1

/**
 * PlaceAssiseId generated by hbm2java
 */
public class PlaceAssiseId implements java.io.Serializable {

	private int numSalle;
	private String nomPosition;
	private int numPlace;
	private String rang;

	public PlaceAssiseId() {
	}

	public PlaceAssiseId(int numSalle, String nomPosition, int numPlace,
			String rang) {
		this.numSalle = numSalle;
		this.nomPosition = nomPosition;
		this.numPlace = numPlace;
		this.rang = rang;
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

	public int getNumPlace() {
		return this.numPlace;
	}

	public void setNumPlace(int numPlace) {
		this.numPlace = numPlace;
	}

	public String getRang() {
		return this.rang;
	}

	public void setRang(String rang) {
		this.rang = rang;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof PlaceAssiseId))
			return false;
		PlaceAssiseId castOther = (PlaceAssiseId) other;

		return (this.getNumSalle() == castOther.getNumSalle())
				&& ((this.getNomPosition() == castOther.getNomPosition()) || (this
						.getNomPosition() != null
						&& castOther.getNomPosition() != null && this
						.getNomPosition().equals(castOther.getNomPosition())))
				&& (this.getNumPlace() == castOther.getNumPlace())
				&& ((this.getRang() == castOther.getRang()) || (this.getRang() != null
						&& castOther.getRang() != null && this.getRang()
						.equals(castOther.getRang())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getNumSalle();
		result = 37
				* result
				+ (getNomPosition() == null ? 0 : this.getNomPosition()
						.hashCode());
		result = 37 * result + this.getNumPlace();
		result = 37 * result
				+ (getRang() == null ? 0 : this.getRang().hashCode());
		return result;
	}

}
