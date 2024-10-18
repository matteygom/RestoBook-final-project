package pl.coderslab.RestoBook.domain;

import lombok.Data;
import javax.persistence.*;
import javax.validation.constraints.*;
import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalTime;
import java.util.Date;

@Data
@Entity
@Table(name = "reservations")
public class Reservation {

    @Id
    @GeneratedValue
    private Long id;

    @ManyToOne
    @JoinColumn(name = "restaurant_id", nullable = false)
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

    @Lob
    private byte[] logo;

    @Override
    public String toString() {
        return "Reservation{id=" + id + ", title='" + title + "', fullName='" + fullName + "', date=" + date + ", time=" + time + ", guestsCount=" + guestsCount + "}";
    }


}