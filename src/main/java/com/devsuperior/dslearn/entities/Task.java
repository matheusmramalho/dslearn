package com.devsuperior.dslearn.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import java.time.Instant;

@Entity
@Table(name = "tb_task")
public class Task extends Lesson {
    private static final long serialVersionUID = 1L;

    private String description;
    private String questionCount;
    private String approvalCount;
    private Double weight;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant dueDate;

    public Task() {

    }

    public Task(Long id, String title, Integer position, Section section, String description, String questionCount, String approvalCount, Double weight, Instant dueDate) {
        super(id, title, position, section);
        this.description = description;
        this.questionCount = questionCount;
        this.approvalCount = approvalCount;
        this.weight = weight;
        this.dueDate = dueDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getQuestionCount() {
        return questionCount;
    }

    public void setQuestionCount(String questionCount) {
        this.questionCount = questionCount;
    }

    public String getApprovalCount() {
        return approvalCount;
    }

    public void setApprovalCount(String approvalCount) {
        this.approvalCount = approvalCount;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Instant getDueDate() {
        return dueDate;
    }

    public void setDueDate(Instant dueDate) {
        this.dueDate = dueDate;
    }
}
