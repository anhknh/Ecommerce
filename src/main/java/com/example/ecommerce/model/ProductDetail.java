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
@Table(name = "product_detail")
public class ProductDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer productDetailId;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Products productId;
    @ManyToOne
    @JoinColumn(name = "size_id")
    private Attributes attributeSize;
    @ManyToOne
    @JoinColumn(name = "color_id")
    private Attributes attributeColor;
    private float price;
    private int quantity;
    private String status;
    private Date createdAt;
    private Date lastModified;
}
