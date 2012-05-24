package fr.utbm.billetterie.models;

import java.util.Set;

public interface UtilisateurDAO {
	public Set<Utilisateur> utilisateurs(int from, int to);
	public Utilisateur create(Utilisateur u);
	public Utilisateur update(Utilisateur u);
	public void destroy(Utilisateur u);
}
