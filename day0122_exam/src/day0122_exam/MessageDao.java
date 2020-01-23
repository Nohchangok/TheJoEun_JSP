package day0122_exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

public class MessageDao {
	
	private static MessageDao instance = new MessageDao();
	private MessageDao() {}
	
	public static MessageDao getInstance() {
		return instance;
	}

	public ArrayList<MessageDto> selectMegList(Connection conn) throws SQLException {
		String sql = "select message_id, guest_name, password, message, wdate, udate "
				+ "from guestbook_message order by wdate desc";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			
			ArrayList<MessageDto>list = new ArrayList<MessageDto>();
			try(ResultSet rs = pst.executeQuery()){
				while(rs.next()) {
					list.add(new MessageDto(
							rs.getInt("message_id"),
							rs.getString("guest_name"),
							rs.getString("password"),
							rs.getString("message"),
							rs.getTimestamp("wdate").toLocalDateTime(),
							rs.getTimestamp("udate").toLocalDateTime()
							));
					
				}
				return list;
				
			}
		}
	}
	
	public MessageDto selectMsg(Connection conn, int message_id) throws SQLException {
		String sql = "select message_id, guest_name, password, message, wdate, udate "
				+ "from guestbook_message where message_id=?";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, message_id);
			
			try(ResultSet rs = pst.executeQuery()){
				
				MessageDto rsMessageDto = new MessageDto();
				
				while(rs.next()) {
					rsMessageDto.setMessageId(rs.getInt("message_id"));
					rsMessageDto.setGuestName(rs.getString("guest_name"));
					rsMessageDto.setPassword(rs.getString("password"));
					rsMessageDto.setMessage(rs.getString("message"));
					rsMessageDto.setWdate(rs.getTimestamp("wdate").toLocalDateTime());
					rsMessageDto.setUdate(rs.getTimestamp("udate").toLocalDateTime());
				}
				return rsMessageDto;
			}
		}
	}
	
	public void insertMsg(Connection conn, MessageDto messageDto) throws SQLException {
		String sql = "insert into guestbook_message(guest_name, password, message, wdate, udate)"
				+ "value(?,?,?,?,?)";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setString(1, messageDto.getGuestName());
			pst.setString(2, messageDto.getPassword());
			pst.setString(3, messageDto.getMessage());
			pst.setTimestamp(4, Timestamp.valueOf(messageDto.getWdate()));
			pst.setTimestamp(5, Timestamp.valueOf(messageDto.getUdate()));
			
			pst.executeUpdate();
		}
		
	}
	
	public void updateMsg(Connection conn, MessageDto messageDto, int message_id) throws SQLException {
		String sql = "update guestbook_message set guest_name=?, password=?, message=?,udate=?"
				+ "where message_id=?";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setString(1, messageDto.getGuestName());
			pst.setString(2, messageDto.getPassword());
			pst.setString(3, messageDto.getMessage());
			pst.setTimestamp(4, Timestamp.valueOf(messageDto.getUdate()));
			pst.setInt(4, message_id);
			
			pst.executeUpdate();
		}
	}
	
	public void deleteMsg(Connection conn, int message_id) throws SQLException {
		String sql ="delete from guestbook_message where message_id=?";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, message_id);
			pst.executeUpdate();
		}
	}
	
	
	
	
}
