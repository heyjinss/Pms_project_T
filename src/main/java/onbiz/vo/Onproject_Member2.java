package onbiz.vo;

public class Onproject_Member2 {
  String emp_no;
  String emp_korname;
  String dept_name;
  String auth_name;
  String emp_email;
  String emp_profile;
  String mem_regdte;
  String mem_witdte;
  String mem_state;
  String pro_no;
  int memcnt;
  //추가 memno
  String mem_no;
  public Onproject_Member2() {
    super();
    // TODO Auto-generated constructor stub
  }
  public Onproject_Member2(String emp_no, String emp_korname, String dept_name, String auth_name,
      String emp_email, String emp_profile, String mem_regdte,  String mem_witdte ,
  String mem_state, String pro_no, String mem_no ) {
    super();
    this.emp_no =emp_no;
    this.emp_korname = emp_korname;
    this.dept_name = dept_name;
    this.auth_name = auth_name;
    this.emp_email = emp_email;
    this.emp_profile =emp_profile;
    this.mem_regdte=mem_regdte;
    this.mem_witdte=mem_witdte;
    this.mem_state=mem_state;
    this.pro_no = pro_no;
    this.mem_no = mem_no;
  }
  public Onproject_Member2(String emp_no, String pro_no) {
    super();
    this.emp_no = emp_no;
    this.pro_no = pro_no;
  }
  /**
   * @return the mem_no
   */
  public String getMem_no() {
    return mem_no;
  }
  /**
   * @param mem_no the mem_no to set
   */
  public void setMem_no(String mem_no) {
    this.mem_no = mem_no;
  }
  /**
   * @return the emp_korname
   */
  public String getEmp_korname() {
    return emp_korname;
  }
  /**
   * @param emp_korname the emp_korname to set
   */
  public void setEmp_korname(String emp_korname) {
    this.emp_korname = emp_korname;
  }
  /**
   * @return the dept_name
   */
  public String getDept_name() {
    return dept_name;
  }
  /**
   * @param dept_name the dept_name to set
   */
  public void setDept_name(String dept_name) {
    this.dept_name = dept_name;
  }
  /**
   * @return the auth_name
   */
  public String getAuth_name() {
    return auth_name;
  }
  /**
   * @param auth_name the auth_name to set
   */
  public void setAuth_name(String auth_name) {
    this.auth_name = auth_name;
  }
  /**
   * @return the emp_email
   */
  public String getEmp_email() {
    return emp_email;
  }
  /**
   * @param emp_email the emp_email to set
   */
  public void setEmp_email(String emp_email) {
    this.emp_email = emp_email;
  }
  /**
   * @return the emp_detail
   */
  /**
   * @return the emp_profile
   */
  public String getEmp_profile() {
    return emp_profile;
  }
  /**
   * @param emp_profile the emp_profile to set
   */
  public void setEmp_profile(String emp_profile) {
    this.emp_profile = emp_profile;
  }
  /**
   * @return the emp_no
   */
  public String getEmp_no() {
    return emp_no;
  }
  /**
   * @param emp_no the emp_no to set
   */
  public void setEmp_no(String emp_no) {
    this.emp_no = emp_no;
  }
  /**
   * @return the mem_regdte
   */
  public String getMem_regdte() {
    return mem_regdte;
  }
  /**
   * @param mem_regdte the mem_regdte to set
   */
  public void setMem_regdte(String mem_regdte) {
    this.mem_regdte = mem_regdte;
  }
  /**
   * @return the mem_witdte
   */
  public String getMem_witdte() {
    return mem_witdte;
  }
  /**
   * @param mem_witdte the mem_witdte to set
   */
  public void setMem_witdte(String mem_witdte) {
    this.mem_witdte = mem_witdte;
  }
  /**
   * @return the mem_state
   */
  public String getMem_state() {
    return mem_state;
  }
  /**
   * @param mem_state the mem_state to set
   */
  public void setMem_state(String mem_state) {
    this.mem_state = mem_state;
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
  public Onproject_Member2(String mem_no) {
    super();
    this.mem_no = mem_no;
  }
  /**
   * @return the memcnt
   */
  public int getMemcnt() {
    return memcnt;
  }
  /**
   * @param memcnt the memcnt to set
   */
  public void setMemcnt(int memcnt) {
    this.memcnt = memcnt;
  }


}
