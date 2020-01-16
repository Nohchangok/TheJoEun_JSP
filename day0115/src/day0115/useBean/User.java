package day0115.useBean;

public class User {
   private String userId;
   private String userPwd;
   private String userName;
   private int userAge;
   
   //속성을 담는 생성자
   public User(String userId, String userPwd, String userName, int userAge) {
      super();
      this.userId = userId;
      this.userPwd = userPwd;
      this.userName = userName;
      this.userAge = userAge;
   }

   public User() {} //기본생성자

   //개새터
   public String getUserId() {
      return userId;
   }

   public void setUserId(String userId) {
      this.userId = userId;
   }

   public String getUserPwd() {
      return userPwd;
   }

   public void setUserPwd(String userPwd) {
      this.userPwd = userPwd;
   }

   public String getUserName() {
      return userName;
   }

   public void setUserName(String userName) {
      this.userName = userName;
   }

   public int getUserAge() {
      return userAge;
   }

   public void setUserAge(int userAge) {
      this.userAge = userAge;
   }
   
   
   
}