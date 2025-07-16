package biblio.dev.repository;

import biblio.dev.entity.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TypeAdherantLivreRepository extends JpaRepository<TypeAdherantLivre, TypeAdherantLivreId> {
    // Ajoute ici des méthodes personnalisées si besoin
}
