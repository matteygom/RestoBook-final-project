package pl.coderslab.RestoBook.domain;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;
import lombok.Getter;

@Data
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(mappedBy = "user", cascade = CascadeType.ALL)
    private Restaurant restaurant;

    @OneToOne(mappedBy = "user", cascade = CascadeType.ALL)
    private Foodie foodie;


    @Column(unique = true)
    @NotBlank
    @Size(min = 5)
    private String userName;

    @NotBlank
    @Size(min = 8)
    private String password;

    @Column(unique = true)
    @NotBlank
    @Size(min = 6)
    private String email;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Role role;


    public enum Role {
        FOODIE,
        RESTAURANT,
    }

}
