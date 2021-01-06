package edu.swu.scms.bean;

public class User {
    private String username;
    private String password;
    private boolean isAdmin;
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public boolean getIfAdmin(){
        return isAdmin;
    }
}
