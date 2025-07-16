package biblio.dev.repository;

import biblio.dev.entity.Adherant;
import biblio.dev.entity.Personne;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AdherantRepository extends JpaRepository<Adherant, Integer> {
    Adherant findByPersonne(Personne personne);
}
