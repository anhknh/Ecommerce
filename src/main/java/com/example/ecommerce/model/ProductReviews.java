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
@Table(name = "product_reviews")
public class ProductReviews {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer reviewId;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Products products;
    @ManyToOne
    @JoinColumn(name = "detail_id")
    private CustomerDetail customerDetail;
    private String email;
    private Integer rating;
    private String comment;
    private Date reviewDate;
    private Date createdAt;
    private Date lastModified;

}
