package biblio.dev.service;

import biblio.dev.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import biblio.dev.entity.*;


@Service
public class LivreService {
    @Autowired
    private LivreRepository livreRepository;

    public List<Livre> findAll() {
        return livreRepository.findAllWithCategories();
    }

    public Optional<Livre> findById(Integer id) {
        return livreRepository.findById(id);
    }

    public Livre save(Livre livre) {
        return livreRepository.save(livre);
    }

    public void deleteById(Integer id) {
        livreRepository.deleteById(id);
    }

    public boolean isAutorised(Livre livre, TypeAdherant typeAdherant) {
        return livreRepository.isLivreAutorisePourTypeAdherant(livre.getIdLivre(), typeAdherant.getIdTypeAdherant()) >= 0;
    }

    /**
     * Vérifie si un exemplaire est disponible (ni en prêt actif, ni réservé validé)
     */
    //public boolean isDispo(Exemplaire exemplaire) {
        // Compatibilité ancienne signature : disponibilité à la date du jour
      //  return isDispo(exemplaire, java.time.LocalDate.now());
    // }

    /**
     * Vérifie si un exemplaire est disponible à une date donnée (ni en prêt actif, ni réservé validé)
     */
    //public boolean isDispo(Exemplaire exemplaire, LocalDate date) {
    //    List<Pret> pretsExemplaire = pretService.findByExemplaire(exemplaire);
    //    // Un exemplaire est dispo s'il n'est pas en prêt actif à la date donnée
    //    boolean exemplaireEnPret = pretsExemplaire.stream().anyMatch(p -> {
    //        LocalDate debut = toLocalDate(p.getDateDebut());
    //        LocalDate fin = (p.getRetour() != null) ? toLocalDate(p.getRetour().getDateRetour()) : null;
    //        if (debut == null) return false;
    //        if (fin != null) {
    //            // Prêt terminé : la date doit être dans l'intervalle
    //            return !date.isBefore(debut) && !date.isAfter(fin);
    //        } else {
    //            // Prêt non retourné : la date doit être après le début
    //            return !date.isBefore(debut);
    //        }
    //    });
//
    //    // Ignore les réservations
    //    return !exemplaireEnPret;
    //}

    /**
     * Utilitaire pour convertir java.util.Date en java.time.LocalDate
     */
}
