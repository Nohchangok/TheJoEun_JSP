package day0122_exam;


import java.time.LocalDateTime;

//디비에 있는 데이터를 저장관리
public class MessageDto {
   
   private int messageId; //메세지번호
   private String guestName; //작성자이름
   private String password; //메세지 암호
   private String message; //메세지 내용
   private LocalDateTime wdate; //작성일
   private LocalDateTime udate; //수정일
   
   public MessageDto() {
      super();
   }

	public MessageDto(int messageId, String guestName, String password, String message, LocalDateTime wdate,
			LocalDateTime udate) {
		super();
		this.messageId = messageId;
		this.guestName = guestName;
		this.password = password;
		this.message = message;
		this.wdate = wdate;
		this.udate = udate;
	}

	public int getMessageId() {
		return messageId;
	}

	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public LocalDateTime getWdate() {
		return wdate;
	}

	public void setWdate(LocalDateTime wdate) {
		this.wdate = wdate;
	}

	public LocalDateTime getUdate() {
		return udate;
	}

	public void setUdate(LocalDateTime udate) {
		this.udate = udate;
	}

	@Override
	public String toString() {
		return "MessageDto [messageId=" + messageId + ", guestName=" + guestName + ", password=" + password
				+ ", message=" + message + ", wdate=" + wdate + ", udate=" + udate + "]";
	}
	
	
}