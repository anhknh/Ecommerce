package com.example.ecommerce.model;


import com.fasterxml.jackson.databind.DatabindException;
import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userId;
    private String username;
    private String passwordHash;
    private String email;
    private String role;
    private String status;
    private Date createdAt;
    private Date lastModified;

}
