package pl.coderslab.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.Date;
import java.util.List;


@Entity
@Table(name = "users")
@Getter
@Setter
@ToString
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @Email
    @NotBlank
    @Column(unique = true)
    private String email;

    @NotBlank
    private String password;

    @NotBlank
    private String phone;

//    @NotBlank
//    @Column(name = "sailor_name")
//    private String sailorName;


    private boolean instructor;

//    @NotBlank
//    @Column(name = "year_of_birth")
//    private Integer yearOfBirth;

    @ManyToMany(mappedBy = "users", fetch = FetchType.EAGER)
    private List<Course> courses;


}
