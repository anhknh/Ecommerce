package com.example.ecommerce.model;


import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "product_images")
public class ProductImages {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer imageId;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Products productId;
    private String nameImage;
    private Date createdAt;
    private Date lastModified;
}
