package com.example.ecommerce.model;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "customer_details")
public class CustomerDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer detailId;
    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customerId;
    private String nameCustomer;
    private String addressCustomer;
    private String phoneNumber;
    private Date createdAt;
    private Date lastModified;
}
