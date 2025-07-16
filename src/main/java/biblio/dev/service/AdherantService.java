package biblio.dev.service;

import biblio.dev.entity.*;
import biblio.dev.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

@Service
public class AdherantService {
    @Autowired
    private AdherantRepository adherantRepository;

    @Autowired
    private AbonnementService abonnementService;

    public List<Adherant> findAll() {
        return adherantRepository.findAll();
    }

    public Optional<Adherant> findById(Integer id) {
        return adherantRepository.findById(id);
    }

    public Adherant save(Adherant adherant) {
        return adherantRepository.save(adherant);
    }

    public void deleteById(Integer id) {
        adherantRepository.deleteById(id);
    }

    public Adherant findByPersonne(Personne personne) {
        return adherantRepository.findByPersonne(personne);
    }

    public boolean isAbonnee(Date dateDebut, Date dateFin, Adherant adherant) {
        List<Abonnement> abonnements = abonnementService.getByAdherant(adherant);
        for (Abonnement ab : abonnements) {
            if (ab.getDateDebut().before(dateDebut) && ab.getDateFin().after(dateFin)) {
                return true;
            }
        }
        return false;
    }

}
