package ru.senkin.datamigration.entities;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "clients")
public class Client {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "first_name")
    private String first_name;

    @Column(name = "last_name")
    private String last_name;
        
    @Column(name = "email")
    private String email;

    @Column(name = "adress")
    private String adress;

    @Column(name = "phone")
    private Long phone;

    @Column(name = "status")
    private Integer status;

    @Override
    public String toString() {
        return "Client{" + 
            "id=" + id +
            "first_name" + first_name + 
            "last_name" + last_name + 
            "}";
    };


}
