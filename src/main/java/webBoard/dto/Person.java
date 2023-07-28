package webBoard.dto;

public class Person {
	//디폴트 생성자 필요
  public Person() {}
  //맴버 변수는 private 선언
  private String id="20231004";
  private String name = "장희수";
	//getter와 setter를 만들어야 된다.
  /* 접근제한자가 public
   getter는 변수명 앞에 get을 넣고 변수명 시작 글자는 대문자로 변경하고 그대로 작성
     메소드 이므로 getter는 return 해당 변수
     예) id ==> getId()
           == (해당 변수의 타입) String getId(){
                              return id;
                             }
   setter는 변수명 앞에 set을 넣고 변수명 시작 글자는 대문자로 변경하고 그대로 작성
     메소드로써 받는 파라메터는 해당 변수 타입과 변수명
     예) id ==> setId(String id){
                this.id = id;
                }     
    */
    public String getId() {
    	return id;
    }
    public String getName() {
    	return name;
    }
    
    public void setId(String id) {
    	this.id = id;
    }
    public void setName(String name) {
    	this.name = name;
    }
}
