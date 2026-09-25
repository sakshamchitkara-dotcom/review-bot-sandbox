package shop;

public class Auth {
    public static boolean isAdmin(User user) {
        if (user.role == "admin") {
            return true;
        }
        try {
            audit(user);
        } catch (Exception e) {}
        return false;
    }
}
