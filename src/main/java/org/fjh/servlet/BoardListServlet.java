package org.fjh.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.fjh.entity.Board;
import org.fjh.util.JdbcHelper;

public class BoardListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs=null;
		PreparedStatement subpst = null;
		ResultSet subrs=null;
		String sql="";
		
		//保存父版块与子版块之间的关系
		Map<Board,List<Board>> boardMap = new HashMap<Board,List<Board>>();
		List<Board> subBoardList = null;
		try {
			conn = JdbcHelper.getConnection();
			//先取父版块（约定数据库中parentId为0就是父版块）
			sql = "select *from tbl_board t where `parentid`=?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, 0);
			rs=pst.executeQuery();
			while(rs.next()){
				Integer bid=rs.getInt("boardid");
				String boardname=rs.getString("boardname");
				Integer parentid=rs.getInt("parentid");
				String bimg=rs.getString("bimg");
				//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
				//封装成Board对象
				Board fatherBoard =null;// new Board(bid, boardname, parentid, bimg);
				//根据父版块的boardid取得其子版块的信息
				subBoardList = new ArrayList<Board>();
				sql ="SELECT *FROM tbl_board t WHERE `parentid`=?";
				subpst = conn.prepareStatement(sql);
				//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

				//绑定父版块的id
				//subpst.setInt(1,fatherBoard.getBoardid() );
				subrs=subpst.executeQuery();
				while( subrs.next()){
					//取得子版块的信息
					 bid=subrs.getInt("boardid");
					 boardname=subrs.getString("boardname");
					 parentid=subrs.getInt("parentid");
					 bimg=subrs.getString("bimg");
				     //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

					//封装成Board对象
					//Board sonBoard = new Board(bid, boardname, parentid, bimg);
					//将其加入List中
					//subBoardList.add(sonBoard);
				}
				//将父版块与子版块的数据加入map
				boardMap.put(fatherBoard, subBoardList);
			}
			
			System.out.println(boardMap);
			
			//将数据保存到属性中，以便传给board-list.jsp显示
			req.setAttribute("boardmap", boardMap);
			
			req.getRequestDispatcher("board-list.jsp").forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			try {
			rs.close();
			subrs.close();
			pst.close();
			subpst.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
}
