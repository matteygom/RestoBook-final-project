package pl.coderslab.RestoBook.domain;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "foodies")
@ToString(exclude = "user")
public class Foodie {

    @Id
    private Long id;

//    @NotEmpty
    @Column(length = 15)
    private String firstName;

//    @NotEmpty
    @Column(length = 20)
    private String lastName;

//    @NotEmpty
    @Column(nullable = true)
    private String birthDate;

    @Column(nullable = true, length = 20)
    private String education;

    @Column(nullable = true, length = 15)
    private String phoneNumber;

    @Column(nullable = true, length = 30)
    private String street;

    @Column(nullable = true, length = 10)
    private String streetNumber;

    @Column(nullable = true, length = 15)
    private String city;

    @Column(nullable = true, length = 20)
    private String country;

    @Column(nullable = true, length = 10)
    private String zipCode;

    @Column(nullable = true, length = 255)
    private String additionalInfo;


    @OneToOne
    @MapsId
    @JoinColumn(name = "id")
    private User user;

    @ManyToMany
    @JoinTable(
            name = "foodie_reservation",
            joinColumns = @JoinColumn(name = "foodie_id"),
            inverseJoinColumns = @JoinColumn(name = "reservation_id")
    )
    private List<Reservation> reservations;

    @ManyToMany
    @JoinTable(
            name = "foodie_restaurant",
            joinColumns = @JoinColumn(name = "foodie_id"),
            inverseJoinColumns = @JoinColumn(name = "restaurant_id")
    )
    private List<Restaurant> faveRestaurants;

}
