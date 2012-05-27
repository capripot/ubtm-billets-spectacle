package fr.utbm.billetterie.models;

import java.util.List;

public class Site implements java.io.Serializable {

	private static List<Spectacle> spectacles;
	private static List<Salle> salle;
	private static List<Region> regions;

	public static List<Spectacle> getSpectacles() {
		return spectacles;
	}

	public static void setSpectacles(List<Spectacle> spectacles) {
		Site.spectacles = spectacles;
	}

	public static List<Salle> getSalle() {
		return salle;
	}

	public static void setSalle(List<Salle> salle) {
		Site.salle = salle;
	}

	public static List<Region> getRegions() {
		return regions;
	}

	public static void setRegions(List<Region> regions) {
		Site.regions = regions;
	}
	
}
