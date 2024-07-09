package com.example.ecommerce.service;

import com.example.ecommerce.model.Attributes;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.ArrayList;

public interface AttributeService {
    ArrayList<Attributes> getAllAttributes();
    ArrayList<Attributes> getAttributesByNameAttribute(String nameAttribute);
    Attributes getAttributeById(Integer attributeId);
    Page<Attributes> getAttributesByNameAttribute(String attributeName, Pageable pageable);
    void saveAttribute(Attributes attribute);
}
