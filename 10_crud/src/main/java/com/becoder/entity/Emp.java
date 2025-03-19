package com.becoder.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "emp_dtls")
public class Emp {

	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;

	    @Column(name = "fullname")  // Add explicit column mapping
	    private String fullname;

	    @Column(name = "address")   // Add explicit column mapping
	    private String address;

	    @Column(name = "email")     // Add explicit column mapping
	    private String email;

	    @Column(name = "password")  // Add explicit column mapping
	    private String password;

	

	@Column(name = "updated_on")
	@Temporal(TemporalType.TIMESTAMP)
	private Date updatedOn;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

	public String toString() {
		return "Emp [id=" + id + ", fullname=" + fullname + ", address=" + address + ", email=" + email + ", password="
				+ password + "]";
	}
}
