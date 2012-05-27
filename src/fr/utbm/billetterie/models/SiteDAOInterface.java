package fr.utbm.billetterie.models;

import java.util.List;

public interface SiteDAOInterface {
	public List<Spectacle> getAllSpectacle();
	public List<Salle> getAllSalle();
}
