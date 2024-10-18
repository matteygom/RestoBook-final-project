package pl.coderslab.RestoBook.domain;

import lombok.Data;
import javax.persistence.*;
import javax.validation.constraints.Max;
import java.util.Base64;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "restaurants")
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

    @Column(length = 35)
    private String restoName;

    @Column
    private String yearOfLaunch;

    @Column(length = 20)
    private String cuisine;

    @Column
    private String capacity;

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

    @Column(length = 15)
    private String city;

    @Column(length = 20)
    private String country;

    @Column(nullable = true, length = 10)
    private String zipCode;

    @Column(nullable = true, length = 255)
    private String description;

    @Column()
    @Max(5)
    private Double rating;

    @Lob
    private byte[] logo;

    @OneToOne
    @MapsId
    @JoinColumn(name = "id")
    private User user;

    @ManyToMany(mappedBy = "faveRestaurants")
    private List<Foodie> foodies;

    @OneToMany(mappedBy = "restaurant", cascade = CascadeType.ALL)
    private List<Reservation> reservations;

    public String getLogoBase64() {
        return logo != null ? Base64.getEncoder().encodeToString(logo) : "";
    }

    @Override
    public String toString() {
        return "Restaurant{id=" + id + ", restoName='" + restoName + "', city='" + city + "', country='" + country + "'}";
    }
}