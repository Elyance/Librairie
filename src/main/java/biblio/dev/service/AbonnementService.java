package biblio.dev.service;

import biblio.dev.entity.Abonnement;
import biblio.dev.entity.Adherant;
import biblio.dev.repository.AbonnementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AbonnementService {
    @Autowired
    private AbonnementRepository abonnementRepository;

    public List<Abonnement> findAll() {
        return abonnementRepository.findAll();
    }

    public Optional<Abonnement> findById(Integer id) {
        return abonnementRepository.findById(id);
    }

    public Abonnement save(Abonnement abonnement) {
        return abonnementRepository.save(abonnement);
    }

    public void deleteById(Integer id) {
        abonnementRepository.deleteById(id);
    }

    public List<Abonnement> getByAdherant(Adherant adherant) {
        return abonnementRepository.findByAdherant(adherant);
    }
}
