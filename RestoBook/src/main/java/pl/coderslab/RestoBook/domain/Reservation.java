package pl.coderslab.RestoBook.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.sql.Time;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Data
@Entity
@Table(name = "reservations")
public class Reservation {

    @Id
    @GeneratedValue
    private Long id;

    @ManyToOne
    private Restaurant restaurant;

    @NotEmpty
    @Column(length = 5)
    private String title;

    @NotEmpty
    @Column(length = 30)
    private String fullName;


    @NotBlank
    @Size(min = 6)
    private String email;

    @NotEmpty
    @Column(length = 15)
    private String phoneNumber;

    @NotEmpty
    @NotEmpty
    @Temporal(TemporalType.DATE)
    private Date date;

    @NotEmpty
    private Time time;

    @NotEmpty
    private Integer guestsCount;

    @Column(nullable = true, length = 255)
    private String specialRequest;

    @NotEmpty
    private String captcha;

    @Lob
    private byte[] logo;

    @ManyToMany(mappedBy = "reservations")
    private List<Restaurant> restaurants;

}
