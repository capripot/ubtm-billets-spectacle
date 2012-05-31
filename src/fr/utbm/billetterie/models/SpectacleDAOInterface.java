package fr.utbm.billetterie.models;

import java.util.List;

public interface SpectacleDAOInterface {
	public List<Spectacle> searchNomSpectacle(String nom);
	
}
