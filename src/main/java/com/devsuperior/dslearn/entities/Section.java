package com.devsuperior.dslearn.entities;


import jakarta.persistence.*;

import java.io.Serializable;

// Módulo dos recursos Ex: Recurso Trilha HTML 1.0 tem a Sessão Módulo 1, Módulo 2, etc..
@Entity
@Table(name = "tb_section")
public class Section implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String description;
    private Integer position;
    private String imgUri;

    // Many Sections to One resource
    @ManyToOne
    @JoinColumn(name = "resource_id")
    private Resource resource;

    // Many Sections prerequisite to One Section
    @ManyToOne
    @JoinColumn(name = "section_id")
    private Section prerequisite;

    public Section() {

    }

    public Section(Long id, String title, String description, Integer position, String imgUri, Resource resource, Section prerequisite) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.position = position;
        this.imgUri = imgUri;
        this.resource = resource;
        this.prerequisite = prerequisite;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    public String getImgUri() {
        return imgUri;
    }

    public void setImgUri(String imgUri) {
        this.imgUri = imgUri;
    }

    public Resource getResource() {
        return resource;
    }

    public void setResource(Resource resource) {
        this.resource = resource;
    }

    public Section getPrerequisite() {
        return prerequisite;
    }

    public void setPrerequisite(Section prerequisite) {
        this.prerequisite = prerequisite;
    }
}
