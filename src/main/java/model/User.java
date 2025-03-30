package model;

public class User {
    private int id;
    private String username;
    private String password;
    private String role;

    // Constructor đầy đủ
    public User(int id, String username, String password, String role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    // 🆕 Constructor mới cho đăng ký (Không cần ID)
    public User(String username, String password, String role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public int getId() { return id; }
    public String getUsername() { return username; }
    public String getPassword() { return password; }
    public String getRole() { return role; }
}
