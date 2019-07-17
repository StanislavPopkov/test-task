package com.tasklist.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "task")
public class Task implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "description")
    private String description;

    @Column(name = "forPerson")
    private String for_person;

    @Column(name = "fromPerson")
    private String from_person;

    @Column(name = "status")
    private String status;

    public int getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }

    public String getFor_person() {
        return for_person;
    }

    public String getFrom_person() {
        return from_person;
    }

    public String getStatus() {
        return status;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setFor_person(String for_person) {
        this.for_person = for_person;
    }

    public void setFrom_person(String from_person) {
        this.from_person = from_person;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
