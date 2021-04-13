package com.portpolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.portpolio.dto.BoardVO;

import util.DBManager;

public class BoardDAO {
private BoardDAO() {}
	
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	public List<BoardVO> selectAllBoards(){
		List<BoardVO> list = new ArrayList<BoardVO>();
		BoardVO boardVO = null;
		
		System.out.println("selectAllBoards()가 호출되었습니다.");
		
		Connection conn= null;
		Statement stmt=null;
		ResultSet rs = null;
		String sql ="select * from board order by num desc";
		
		try {
			conn =DBManager.getConnection();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				boardVO = new BoardVO();
				boardVO.setNum(rs.getInt("num"));
				boardVO.setPwd(rs.getString("pwd"));
				boardVO.setName(rs.getString("name"));
				boardVO.setEmail(rs.getString("email"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setContent(rs.getString("content"));
				boardVO.setReadcount(rs.getInt("readcount"));
				boardVO.setWritedate(rs.getTimestamp("writedate"));
				list.add(boardVO);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		
		return list;
	}

	public void updateReadCount(int num) {
		System.out.println("updateReadCount("+num+")를 호출했습니다.");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "update board set readcount=readcount+1 where num=?";
		
		try {
			
			conn=DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}

	public BoardVO selectBoardByNum(int num) {
		BoardVO boardVO = null;
		
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from board where num=?";
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				boardVO = new BoardVO();
				boardVO.setNum(rs.getInt("num"));
				boardVO.setPwd(rs.getString("pwd"));
				boardVO.setName(rs.getString("name"));
				boardVO.setEmail(rs.getString("email"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setContent(rs.getString("content"));
				boardVO.setReadcount(rs.getInt("readcount"));
				boardVO.setWritedate(rs.getTimestamp("writedate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return boardVO;
	}

	public void insertBoard(BoardVO boardVO) {
		System.out.println("insertBoard 호출 :"+boardVO.getName());
		
		Connection conn = null;
		PreparedStatement pstmt =null; 
		String sql = "insert into board(num, pwd, name, email, title, content) values(BOARD_SEQ.nextval,?,?,?,?,?)";
		
		try { 
			conn=DBManager.getConnection(); 
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, boardVO.getPwd());
			pstmt.setString(2, boardVO.getName());
			pstmt.setString(3, boardVO.getEmail());
			pstmt.setString(4, boardVO.getTitle());
			pstmt.setString(5, boardVO.getContent());
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace(); 
		}finally { 
			DBManager.close(conn,pstmt); 
		}
		
	}

	public void updateBoard(BoardVO boardVO) {
		System.out.println("updateBoard("+boardVO.getNum()+")를 호출했습니다.");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "update board set name=?, pwd=?, email=?, title = ?, content=? where num=?";
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardVO.getName());
			pstmt.setString(2, boardVO.getPwd());
			pstmt.setString(3, boardVO.getEmail());
			pstmt.setString(4, boardVO.getTitle());
			pstmt.setString(5, boardVO.getContent());
			pstmt.setInt(6, boardVO.getNum());
			pstmt.executeUpdate(); //실행
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}

	public void deleteBoard(int num) {
		System.out.println("deleteBoard("+num+")를 호출했습니다.");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete from board where num=?";
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}
}
