package fr.utbm.billetterie.models;

import java.util.List;

public class Site implements java.io.Serializable {

	public static List<Spectacle> spectacles;

	public List<Spectacle> getSpectacles() {
		return spectacles;
	}

	public void setSpectacles(List<Spectacle> spectacles) {
		this.spectacles = spectacles;
	}
	
}
