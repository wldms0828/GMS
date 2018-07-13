package test;

import java.sql.*;
import java.util.*;

public class JDBCtest {
	public static void main(String[] args) {
		//싱글톤형태
		try {
			//오라클 객체가 나타나도록 호출한다.(내가 나를 부르는 호출)
			Class.forName("oracle.jdbc.driver.OracleDriver");//<-도 객체
			//url,id,pass
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","wldms","wldms0828");
			/*String sql = "SELECT COUNT(*) AS count FROM TAB";//오라클 에러가 발생하면 conn 죽는다.  */			
			String sql = "SELECT * FROM TAB";
			Statement stmt = conn.createStatement();//문자열이 아니고 문서로 생각//* factory pattern
			ResultSet rs = stmt.executeQuery(sql);//db가 던져준 값을 담아서 가져온다.
			List<String> list = new ArrayList<>();
			while(rs.next()) {
				list.add(rs.getString("TNAME"));
			}
			System.out.println("테이블" + list);
			/*String count = "";
			while(rs.next()) {
				count = rs.getString("count");
			}
			System.out.println("테이블갯수  : "+ count );
		*/
		} catch (SQLException e) {
			System.out.println("에러발생");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {//class가 없으면 e.printStackTrace()를 보여줘라
			
			e.printStackTrace();
		}
	}
}
