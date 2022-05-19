package DTO;

public class MemberDTO {
   private String id;
   private String pw;
   private String name;
   private int birthday;
   private int phone;
   private String email;
   private int zipcode;
   private String address1;
   private String address2;
   
   
   public MemberDTO() {
   }
   
   public MemberDTO(String id, String pw, String name, int birthday, int phone, String email, int zipcode,
         String address1, String address2) {
      this.id = id;
      this.pw = pw;
      this.name = name;
      this.birthday = birthday;
      this.phone = phone;
      this.email = email;
      this.zipcode = zipcode;
      this.address1 = address1;
      this.address2 = address2;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPw() {
      return pw;
   }
   public void setPw(String pw) {
      this.pw = pw;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public int getBirthday() {
      return birthday;
   }
   public void setBirthday(int birthday) {
      this.birthday = birthday;
   }
   public int getPhone() {
      return phone;
   }
   public void setPhone(int phone) {
      this.phone = phone;
   }
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public int getZipcode() {
      return zipcode;
   }
   public void setZipcode(int zipcode) {
      this.zipcode = zipcode;
   }
   public String getAddress1() {
      return address1;
   }
   public void setAddress1(String address1) {
      this.address1 = address1;
   }
   public String getAddress2() {
      return address2;
   }
   public void setAddress2(String address2) {
      this.address2 = address2;
   }
   
}