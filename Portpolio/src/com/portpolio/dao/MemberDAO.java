package com.portpolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.portpolio.dto.MemberVO;

import util.DBManager;

public class MemberDAO {
	
	// 생성자
	private MemberDAO() {
		
	}
	
	//싱글톤
	private static MemberDAO instance = new MemberDAO();
	
	//연결할 정보 싱글톤 메서드
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public void insertMember(MemberVO memberVO) {
		
		String sql ="insert into member values(?,?,?,?,?,?,?,?)"; 
		 Connection conn = null;
		 PreparedStatement pstmt = null;
		 
		 try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, memberVO.getUserid());
			pstmt.setString(2,memberVO.getPwd()); 
			pstmt.setString(3, memberVO.getName());
			pstmt.setString(4, memberVO.getBirth()); 
			pstmt.setString(5,memberVO.getGender()); 
			pstmt.setString(6, memberVO.getEmail());
			pstmt.setString(7, memberVO.getNationNum()); 
			pstmt.setString(8,memberVO.getPhone());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		 
	}	
	

	public MemberVO selectMemberByUserid(String userid) {
		System.out.println("selectMemberByUserid() 호출 : "+userid);
		
		MemberVO memberVO = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member where userid=?";
		
		try {
			memberVO = new MemberVO();
			conn=DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				System.out.println("DAO userid : "+rs.getString("userid"));
				memberVO.setUserid(rs.getString("userid"));
				memberVO.setPwd(rs.getString("pwd"));
				memberVO.setName(rs.getString("name"));
				memberVO.setBirth(rs.getString("birth"));
				memberVO.setGender(rs.getString("gender"));
				memberVO.setEmail(rs.getString("email"));
				memberVO.setNationNum(rs.getString("nationnum"));
				memberVO.setPhone(rs.getString("phone"));	
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return memberVO;
	}
	
	public MemberVO selectFind(String name, String phone) {
		
		System.out.println("selectFind("+name+")메서드 호출");
		
		MemberVO memberVO = null;
		String sql = "select * from member where name=? and phone=?";
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();//데이터 연결
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				//name과 phone이 있을경우
				if(rs.getString("name")!=null && 
						rs.getString("name").equals(name)
						&& rs.getString("phone")!=null &&
						rs.getString("phone").equals(phone)) {
					memberVO = new MemberVO();
					memberVO.setUserid(rs.getString("userid"));
					memberVO.setPwd(rs.getString("pwd"));
					memberVO.setName(rs.getString("name"));
					memberVO.setBirth(rs.getString("birth"));
					memberVO.setGender(rs.getString("gender"));
					memberVO.setEmail(rs.getString("email"));
					memberVO.setNationNum(rs.getString("nationnum"));
					memberVO.setPhone(rs.getString("phone"));

					
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return memberVO;
		
	}

	public MemberVO selectAllMember() {
		System.out.println("selectAllMember 호출");
		MemberVO memberVO = null;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select * from member";
		
		try {
			conn=DBManager.getConnection();
			stmt = conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				memberVO = new MemberVO();
				memberVO.setUserid(rs.getString("userid"));
				memberVO.setPwd(rs.getString("pwd"));
				memberVO.setName(rs.getString("name"));
				memberVO.setBirth(rs.getString("birth"));
				memberVO.setGender(rs.getString("gender"));
				memberVO.setEmail(rs.getString("email"));
				memberVO.setNationNum(rs.getString("nationnum"));
				memberVO.setPhone(rs.getString("phone"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		
		return memberVO;
	}



	
}