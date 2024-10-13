package pl.coderslab.RestoBook.domain;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.sql.Time;
import java.time.LocalDateTime;
import java.time.LocalTime;
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

    @NotNull
    @Future(message = "Data musi być w przyszłości")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;

    @NotNull
    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime time;

    @NotNull
    private Integer guestsCount;

    @Column(nullable = true, length = 255)
    private String specialRequest;

//    private String captcha;

    @Lob
    private byte[] logo;

    @ManyToMany(mappedBy = "reservations")
    private List<Restaurant> restaurants;

}
