package biblio.dev.repository;

import biblio.dev.entity.Abonnement;
import biblio.dev.entity.Adherant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AbonnementRepository extends JpaRepository<Abonnement, Integer> {
    List<Abonnement> findByAdherant(Adherant adherant);
}
