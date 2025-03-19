package com.becoder.entity;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "supplements")
public class Supplement {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "description", length = 500)
    private String description;

    @Column(name = "price", nullable = false)
    private BigDecimal price;

  
    @Column(name = "image_url", length = 500)
    private String imageUrl;

    @Column(name = "updated_on")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date updatedOn;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public java.util.Date getUpdatedOn() {
        return updatedOn;
    }

    public void setUpdatedOn(java.util.Date updatedOn) {
        this.updatedOn = updatedOn;
    }

    @Override
    public String toString() {
        return "Supplement{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
               
                ", imageUrl='" + imageUrl + '\'' +
                ", updatedOn=" + updatedOn +
                '}';
    }
}
