package com.becoder.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "order_dtls")
public class Order{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String itemId;
	private String itemName;
	private String name;

	private String address;

	private String pincode;
	
	private String contact;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(	String itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}

	public String getaddress() {
		return address;
	}

	public void setaddress(String address) {
		this.address = address;
	}
	
	public String getpincode() {
		return pincode;
	}

	public void setpincode(String pincode) {
		this.pincode = pincode;
	}

	public String getcontact() {
		return contact;
	}

	public void setcontact(String contact) {
		this.contact = contact;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", itemId=" + itemId + ", itemName=" + itemName + ", name=" + name
				+ ", address=" + address + ", pincode=" + pincode + ", contact=" + contact + "]";
	}
}