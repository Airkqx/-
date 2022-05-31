package cn.ideal.domain;

import java.sql.Date;

public class VoluntaryInformation {
    @Override
    public String toString() {
        return "VoluntaryInformation{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", school='" + school + '\'' +
                ", address='" + address + '\'' +
                ", director='" + director + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                ", peopleNeed=" + peopleNeed +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", description='" + description + '\'' +
                ", checkStatus=" + checkStatus +
                '}';
    }

    private Integer id;
    private String title;
    private String school;
    private String address;
    private String director;
    private String phoneNumber;
    private String email;
    private Integer peopleNeed;
    private Date startTime;
    private Date endTime;
    private String description;
    private Integer checkStatus;
    private String demander;
    private String checked;
    private String yet;

    public String getYet() {
        return yet;
    }

    public void setYet(String yet) {
        this.yet = yet;
    }

    public String getChecked() {
        return checked;
    }

    public void setChecked(String checked) {
        this.checked = checked;
    }

    public String getDemander() {
        return demander;
    }

    public void setDemander(String demander) {
        this.demander = demander;
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
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

    public Integer getPeopleNeed() {
        return peopleNeed;
    }

    public void setPeopleNeed(Integer peopleNeed) {
        this.peopleNeed = peopleNeed;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
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

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }
}
