package com.becoder.entity;

import javax.persistence.*;

@Entity
@Table(name = "cart")
public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "supplement_id", nullable = false)
    private Supplement supplement;

    @Column(name = "quantity", nullable = false)
    private int quantity;

    @Column(name = "added_on")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date addedOn;

    // Default Constructor
    public Cart() {
    }

    // Parameterized Constructor
    public Cart(Supplement supplement, int quantity, java.util.Date addedOn) {
        this.supplement = supplement;
        this.quantity = quantity;
        this.addedOn = addedOn;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Supplement getSupplement() {
        return supplement;
    }

    public void setSupplement(Supplement supplement) {
        this.supplement = supplement;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public java.util.Date getAddedOn() {
        return addedOn;
    }

    public void setAddedOn(java.util.Date addedOn) {
        this.addedOn = addedOn;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", supplement=" + supplement +
                ", quantity=" + quantity +
                ", addedOn=" + addedOn +
                '}';
    }
}
