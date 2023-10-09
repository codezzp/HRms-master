package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUtil {
        public static final String connectionURL="jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT&allowPublicKeyRetrieval=true";
        public static final String username="root";
        public static final String password="123456";
        
        public static Connection getConnection()
        {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                //Class.forName("com.mysql.cj.jdbc.Driver");
                return DriverManager.getConnection(connectionURL, username, password);
            } catch (Exception e) {
                // TODO: handle exception
                System.out.println("连接失败");
                e.printStackTrace();
            }
            return null;
        }
  
        public static boolean addInformation2(String username,String password)
        {
            
            Connection con=null;
            PreparedStatement pstmt=null;
            try {
                con=getConnection();
                String sql="insert into signin_admin (username,password) values (\'"+
                        username+"\',\'"+password+"\')";
                //System.out.println(sql);
                pstmt=con.prepareStatement(sql);
                pstmt.executeUpdate();
                return true;
            }
            catch(SQLException e)
            {
                e.printStackTrace();
            }
            return false;
            
        }
        /*public static void main(String[] args) {
            addInformation("1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1");
        }*/
}