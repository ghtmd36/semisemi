package semi.notice.model.dao;

import java.sql.Connection;
import java.util.ArrayList;

import semi.notice.model.vo.Notice;

public class NoticeDao {

	public ArrayList<Notice> listView(Connection conn) {
		ArrayList<Notice> list = null;
		
		return list;
	}
	
	public Notice selectBoard(Connection conn, int noticeNo) {
		Notice board = null;
		
		return board;
	}
	
	public int deleteBoard(Connection conn, int noticeNo) {
		int result = 0;
		
		return result;
	}
	
	public int updateNotice(Connection conn, Notice notice) {
		return 0;
	}
	
	public int Notice(Connection conn, Notice notice) {
		return 0;
	}
}
