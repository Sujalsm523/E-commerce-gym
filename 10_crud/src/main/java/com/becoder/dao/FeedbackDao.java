package com.becoder.dao;

import java.util.List;
import com.becoder.entity.Feedback;

public interface FeedbackDao {
    int saveFeedback(Feedback feedback);
    Feedback getFeedbackById(int id);
    List<Feedback> getAllFeedback();
    void deleteFeedback(int id);
    void updateFeedback(Feedback feedback);
    List<Feedback> getFeedbackByUserName(String userName);
    long countTotalFeedbacks();
}
