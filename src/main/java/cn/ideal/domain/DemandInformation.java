package cn.ideal.domain;

import java.sql.Date;

public class DemandInformation {
    private Integer id;


    private String title;
    private String demander;
    private String phoneNumber;
    private String email;
    private Date endTime;
    private String description;
    private String checked;

    public String getChecked() {
        return checked;
    }

    public void setChecked(String checked) {
        this.checked = checked;
    }





    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(int checkStatus) {
        this.checkStatus = checkStatus;
    }

    private int checkStatus;


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "DemandInformation{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", demander='" + demander + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                ", endTime=" + endTime +
                ", description='" + description + '\'' +
                ", checkStatus=" + checkStatus +
                '}';
    }

    public String getDemander() {
        return demander;
    }

    public void setDemander(String demander) {
        this.demander = demander;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

