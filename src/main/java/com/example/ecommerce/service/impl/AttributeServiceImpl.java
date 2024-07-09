package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.Attributes;
import com.example.ecommerce.repository.AttributesRepo;
import com.example.ecommerce.service.AttributeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class AttributeServiceImpl implements AttributeService {

    @Autowired
    AttributesRepo attributesRepo;

    @Override
    public ArrayList<Attributes> getAllAttributes() {
        return (ArrayList<Attributes>) attributesRepo.findAll();
    }

    @Override
    public ArrayList<Attributes> getAttributesByNameAttribute(String nameAttribute) {
        return attributesRepo.findByAttributeName(nameAttribute);
    }

    @Override
    public Attributes getAttributeById(Integer attributeId) {
        return attributesRepo.findByAttributeId(attributeId);
    }

    @Override
    public Page<Attributes> getAttributesByNameAttribute(String attributeName, Pageable pageable) {
        return attributesRepo.findByAttributeName(attributeName, pageable);
    }

    @Override
    public void saveAttribute(Attributes attribute) {
        attributesRepo.save(attribute);
    }
}
