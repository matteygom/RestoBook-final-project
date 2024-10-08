package pl.coderslab.RestoBook.domain;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.Base64;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "restaurants")
@ToString(exclude = "user")
public class Restaurant {

    @Id
    private Long id;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "created_at", updatable = false)
    private Date createdAt;

    @PrePersist
    protected void onCreate() {
        createdAt = new Date();
    }

    @NotEmpty
    @Column(length = 35)
    private String restoName;

    @NotEmpty
    @Temporal(TemporalType.DATE)
    private Date dateOfLaunch;

    @NotEmpty
    @Column(length = 20)
    private String cuisine;

    @NotEmpty
    @Column
    private Long capacity;

    @NotEmpty
    @Column
    private Double avgPrice;

    @Column(nullable = true, length = 30)
    private String webSite;

    @Column(nullable = true, length = 15)
    private String phoneNumber;

    @Column(nullable = true, length = 35)
    private String street;

    @Column(nullable = true, length = 10)
    private String streetNumber;

    @NotEmpty
    @Column(length = 15)
    private String city;

    @NotEmpty
    @Column(length = 20)
    private String country;

    @Column(nullable = true, length = 10)
    private String zipCode;

    @Column(nullable = true, length = 255)
    private String description;

    @NotEmpty
    private Double rating;

    @Lob
    private byte[] logo;

    @OneToOne
    @MapsId
    @JoinColumn(name = "id")
    private User user;


    @ManyToMany(mappedBy = "faveRestaurants")
    private List<Foodie> foodies;

    @ManyToMany
    @JoinTable(
            name = "restaurant_reservation",
            joinColumns = @JoinColumn(name = "restaurant_id"),
            inverseJoinColumns = @JoinColumn(name = "reservation_id")
    )
    private List<Reservation> reservations;


    public String getLogoBase64() {
        return Base64.getEncoder().encodeToString(logo);
    }


}
