package cn.ideal.domain;

public class Apply {
    Integer id;
    String voluntaryApply;
    String volunteerName;

    @Override
    public String toString() {
        return "Apply{" +
                "id=" + id +
                ", voluntaryApply='" + voluntaryApply + '\'' +
                ", volunteerName='" + volunteerName + '\'' +
                '}';
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setVoluntaryApply(String voluntaryApply) {
        this.voluntaryApply = voluntaryApply;
    }

    public void setVolunteerName(String volunteerName) {
        this.volunteerName = volunteerName;
    }

    public Integer getId() {
        return id;
    }

    public String getVoluntaryApply() {
        return voluntaryApply;
    }

    public String getVolunteerName() {
        return volunteerName;
    }

    public Apply() {
    }

    public Apply(Integer id, String voluntaryApply, String volunteerName) {
        this.id = id;
        this.voluntaryApply = voluntaryApply;
        this.volunteerName = volunteerName;
    }
}
