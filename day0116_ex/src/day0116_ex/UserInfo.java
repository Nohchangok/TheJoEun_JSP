package day0116_ex;

import java.util.ArrayList;

public class UserInfo {
   String name;
   int age;
   ArrayList<String> hobby;
   
   
   public UserInfo() {
      super();
   }
   
   
   public UserInfo(String name, int age, ArrayList<String> hobby) {
      super();
      this.name = name;
      this.age = age;
      this.hobby = hobby;
   }


   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public int getAge() {
      return age;
   }
   public void setAge(int age) {
      this.age = age;
   }
   public ArrayList<String> getHobby() {
      return hobby;
   }
   public void setHobby(ArrayList<String> hobby) {
      this.hobby = hobby;
   }
}