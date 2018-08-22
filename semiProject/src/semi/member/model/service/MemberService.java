package semi.member.model.service;

import static semi.common.JDBCTemplat.*;
import java.sql.Connection;
import java.util.ArrayList;

import semi.member.exception.MemberException;
import semi.member.model.dao.MemberDao;
import semi.member.model.vo.Member;

public class MemberService {

	public MemberService() {}
	
	public String loginCheck(String mId, String mPassword) throws MemberException{
		Connection con = getConnection();
		String mName = new MemberDao().loginCheck(con, mId, mPassword);
		close(con);
		return mName;
	}
	
	public int deleteMember(String mId) throws MemberException{
		Connection con = getConnection();
		int result = new MemberDao().deleteMember(con, mId);
		if(result > 0)
			commit(con);
		else
			rollback(con);
		return result;
	}

	public Member selectMember(String mId) throws MemberException{
		Connection con = getConnection();
		Member member = new MemberDao().selectMember(con, mId);
		close(con);
		return member;
	}
	
	public Member myPoint(String mId) throws MemberException{
		Connection con = getConnection();
		Member member = new MemberDao().myPoint(con, mId);
		close(con);
		return member;
	}
	
	public int updateMember(Member member) throws MemberException{
		Connection con = getConnection();
		int result = new MemberDao().updateMember(con, member);
		if(result > 0)
			commit(con);
		else
			rollback(con);
		return result;
	}

	public Member myRent(String mId) throws MemberException{
		Connection con = getConnection();
		Member member = new MemberDao().myRent(con, mId);
		close(con);
		return member;
	}

	public String aloginCheck(String aId, String aPassword) throws MemberException{
		Connection con = getConnection();
		String aName = new MemberDao().aloginCheck(con, aId, aPassword);
		close(con);
		return aName;
	}
	
	public int insertMember(Member m) throws MemberException {
		Connection con = getConnection();
		int result = new MemberDao().insertMember(con, m);
		if(result > 0)
			commit(con);
		else
			rollback(con);
		close(con);
		return result;
	}

	public int selectCheckId(String m_Id) {
		Connection con = getConnection();
		
		int result = new MemberDao().selectCheckId(con, m_Id);
		
		close(con);
		return result;
	}
	
	//페이지 당 조회 회원 리밋걸기 위해 회원 수 count(*) 조회
		public int getListCount() throws MemberException {
			Connection con = getConnection();
			int listCount = new MemberDao().getListCount(con);
			close(con);
			return listCount;
		}
		
		//회원 전체 조회용
		public ArrayList<Member> selectList(int currentPage, int limit) throws MemberException {
			Connection con = getConnection();
			ArrayList<Member> list = new MemberDao().selectList(con, currentPage, limit);
			close(con);
			return list;
		}
		
		//회원 필터 조회용
		public ArrayList<Member> filterSearch(String filter, String value) throws MemberException{
			Connection con = getConnection();
			ArrayList<Member> list = new MemberDao().filterSearch(con, filter, value);
			
			close(con);
			return list;
		}
		
		//회원 수정용
		public int editMember(Member m) throws MemberException{
			Connection con = getConnection();
			int result = new MemberDao().editMember(con, m);
			if(result > 0)
				commit(con);
			else
				rollback(con);
			
			close(con);
			
			return result;
		}
}
