package com.example.ecommerce.model;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "orders")
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer orderId;
    @ManyToOne
    @JoinColumn(name = "detail_id")
    private CustomerDetail customerDetail;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date orderDate;
    private String status;
    private String paymentMethod;
    private float totalAmount;
    private Date createdAt;
    private Date lastModified;
}
