package day0120;

import java.util.List;

//한페이지에 보여줄 데이터를 관리하기 위한 클래스.
//페이지번호, 페이지목록, 전체메세지 개수, 페이지당 보여줄 메세지개수.
public class MessageListView {
	
	private int messageTotalCount; //메세지 전체 개수.
	private int currentPageNumber; //현재 페이지 번호.
	private List<MessageDto> messageList; //한 화면에 보여줄 메세지 리스트.
	private int pageTotalCount; //전체페이지 개수.
	private int messageCountPerPage; //페이지당 메세지 개수.
	private int firstRow; //화면상 맨위에 있는 로우 번호.
	private int endRow; //마지막번호
	
	public MessageListView(int messageTotalCount, int currentPageNumber, List<MessageDto> messageList,
			int messageCountPerPage, int firstRow, int endRow){
		this.messageTotalCount = messageTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.messageList = messageList;
		this.messageCountPerPage = messageCountPerPage;
		this.firstRow = firstRow;
		this.endRow = endRow;
		
		if(this.messageTotalCount == 0) {
			pageTotalCount = 0;
		}else {
			pageTotalCount = messageTotalCount / messageCountPerPage;
			if(messageTotalCount % messageCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}

	public int getMessageTotalCount() {
		return messageTotalCount;
	}

	public void setMessageTotalCount(int messageTotalCount) {
		this.messageTotalCount = messageTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}

	public List<MessageDto> getMessageList() {
		return messageList;
	}

	public void setMessageList(List<MessageDto> messageList) {
		this.messageList = messageList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	public int getMessageCountPerPage() {
		return messageCountPerPage;
	}

	public void setMessageCountPerPage(int messageCountPerPage) {
		this.messageCountPerPage = messageCountPerPage;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public void setFirstRow(int firstRow) {
		this.firstRow = firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	@Override
	public String toString() {
		return "MessageListView [messageTotalCount=" + messageTotalCount + ", currentPageNumber=" + currentPageNumber
				+ ", messageList=" + messageList + ", pageTotalCount=" + pageTotalCount + ", messageCountPerPage="
				+ messageCountPerPage + ", firstRow=" + firstRow + ", endRow=" + endRow + "]";
	}
	
}
