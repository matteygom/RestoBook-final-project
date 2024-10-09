package pl.coderslab.RestoBook.domain;


import lombok.Data;
import lombok.Getter;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Data
@Entity
@Table(name = "users")
@ToString(exclude = "restaurant")
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


    @Column
    private boolean active;


    public enum Role {
        FOODIE,
        RESTAURANT,
    }

}
