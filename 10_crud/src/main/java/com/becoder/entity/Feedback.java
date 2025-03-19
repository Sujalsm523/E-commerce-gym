package com.becoder.entity;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "user_feedback")
public class Feedback {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "user_name", nullable = false)
    private String userName;

    @Column(name = "email_address", nullable = false)
    private String emailAddress;

    @Column(name = "contact_number")
    private String contactNumber;

    @Column(name = "detailed_feedback", length = 1000)
    private String detailedFeedback;

    @Column(name = "submission_date")
    private LocalDateTime submissionDate;

    public Feedback() {
        this.submissionDate = LocalDateTime.now();
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getDetailedFeedback() {
        return detailedFeedback;
    }

    public void setDetailedFeedback(String detailedFeedback) {
        this.detailedFeedback = detailedFeedback;
    }

    public LocalDateTime getSubmissionDate() {
        return submissionDate;
    }

    // Validation method
    public boolean isValidFeedback() {
        return userName != null && !userName.trim().isEmpty() &&
               emailAddress != null && emailAddress.contains("@") &&
               contactNumber != null && contactNumber.length() >= 10 &&
               detailedFeedback != null && !detailedFeedback.trim().isEmpty();
    }
}
