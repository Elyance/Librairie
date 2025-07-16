package biblio.dev.repository;

import biblio.dev.entity.Admin;
import biblio.dev.entity.Personne;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
    Admin findByPersonne(Personne personne);
}
