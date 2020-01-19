package day0117;

import java.time.LocalDateTime;

public class MessageDto {
	
	private int messageId; //방명록 아이디.
	private String guestName; //글쓴이.
	private String message; //내용.
	private LocalDateTime wdate; //작성일.
	
	public MessageDto(){
		super();
	}
	
	public MessageDto(int messageId, String guestName, String message, LocalDateTime wdate) {
		super();
		this.messageId = messageId;
		this.guestName = guestName;
		this.message = message;
		this.wdate = wdate;
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

	@Override
	public String toString() {
		return "MessageDto [messageId=" + messageId + ", guestName=" + guestName + ", message=" + message + ", wdate="
				+ wdate + "]";
	}
	

}
