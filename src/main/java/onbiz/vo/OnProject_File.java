package onbiz.vo;

import java.util.Date;

public class OnProject_File {

     String profile_no ; //--파일번호
     String  profile_name; //--파일명
     Date profile_regdte ;//, --등록일
     String pro_no ; //--프로젝트번호 
     
     
    public OnProject_File(String profile_name) {
      super();
      this.profile_name = profile_name;
    }
    
    public OnProject_File() {
      super();
      // TODO Auto-generated constructor stub
    }
    /**
     * @return the profile_no
     */
    public String getProfile_no() {
      return profile_no;
    }
    /**
     * @param profile_no the profile_no to set
     */
    public void setProfile_no(String profile_no) {
      this.profile_no = profile_no;
    }
    /**
     * @return the profile_name
     */
    public String getProfile_name() {
      return profile_name;
    }
    /**
     * @param profile_name the profile_name to set
     */
    public void setProfile_name(String profile_name) {
      this.profile_name = profile_name;
    }
    /**
     * @return the profile_regdte
     */
    public Date getProfile_regdte() {
      return profile_regdte;
    }
    /**
     * @param profile_regdte the profile_regdte to set
     */
    public void setProfile_regdte(Date profile_regdte) {
      this.profile_regdte = profile_regdte;
    }
    /**
     * @return the pro_no
     */
    public String getPro_no() {
      return pro_no;
    }
    /**
     * @param pro_no the pro_no to set
     */
    public void setPro_no(String pro_no) {
      this.pro_no = pro_no;
    }
    public OnProject_File(String profile_no, String profile_name, Date profile_regdte,
        String pro_no) {
      super();
      this.profile_no = profile_no;
      this.profile_name = profile_name;
      this.profile_regdte = profile_regdte;
      this.pro_no = pro_no;
    }
      
}
