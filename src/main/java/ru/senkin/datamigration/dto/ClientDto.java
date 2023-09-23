package ru.senkin.datamigration.dto;

public class ClientDto {

    private Long id;
    private String first_name;
    private String last_name;
    private String email;
    private String adress;
    private Long phone;
    private Integer status;

    public ClientDto() {

    }

    public Long getId() {
        return id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public String getEmail() {
        return email;
    }

    public String getAdress() {
        return adress;
    }

    public Long getPhone() {
        return phone;
    }

    public Integer getStatus() {
        return status;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }
    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setAdress(String adress) {
        this.adress = adress;
    }
    public void setPhone(Long phone) {
        this.phone = phone;
    }
    public void setStatus(Integer status) {
        this.status = status;
    }

}
