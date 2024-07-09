package com.example.ecommerce.repository;

import com.example.ecommerce.model.Attributes;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface AttributesRepo extends JpaRepository<Attributes, Integer> {
    ArrayList<Attributes> findByAttributeName(String nameAttribute);
    Attributes findByAttributeId(Integer attributesId);
    Page<Attributes> findByAttributeName(String nameAttribute, Pageable pageable);
}
