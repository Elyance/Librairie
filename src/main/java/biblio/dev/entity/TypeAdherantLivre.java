package biblio.dev.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "TypeAdherant_Livre")
public class TypeAdherantLivre implements Serializable {
    @EmbeddedId
    private TypeAdherantLivreId id;

    @ManyToOne
    @MapsId("idTypeAdherant")
    @JoinColumn(name = "idTypeAdherant")
    private TypeAdherant typeAdherant;

    @ManyToOne
    @MapsId("idLivre")
    @JoinColumn(name = "idLivre")
    private Livre livre;

    @Column(name = "date", nullable = false)
    private Date date;

    // Getters et setters
    public TypeAdherantLivreId getId() { return id; }
    public void setId(TypeAdherantLivreId id) { this.id = id; }
    public TypeAdherant getTypeAdherant() { return typeAdherant; }
    public void setTypeAdherant(TypeAdherant typeAdherant) { this.typeAdherant = typeAdherant; }
    public Livre getLivre() { return livre; }
    public void setLivre(Livre livre) { this.livre = livre; }
    public Date getDate() { return date; }
    public void setDate(Date date) { this.date = date; }
}
