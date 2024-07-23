package pl.coderslab.charity.security;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @NotBlank(message = "Imię nie może być puste")
    @Size(max = 50, message = "Imię nie może być dłuższe niż 50 znaków")
    private String firstName;
    @NotBlank(message = "Nazwisko nie może być puste")
    @Size(max = 50, message = "Nazwisko nie może być dłuższe niż 50 znaków")
    private String lastName;
    @Email
    @NotNull
    @Column(unique = true)
    private String email;
    @NotBlank(message = "Hasło nie może być puste")
    @Size(min = 4, message = "Hasło musi zawierać minimum 4 znaki")
    private String password;
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<Role> roles;
}
