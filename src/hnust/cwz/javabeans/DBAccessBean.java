package hnust.cwz.javabeans;

import java.sql.*;

public class DBAccessBean {
	private String drv = "com.mysql.cj.jdbc.Driver";
<<<<<<< HEAD
	private String url = "jdbc:mysql://localhost:3306/db_simhr?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT&allowPublicKeyRetrieval=true";
	private String usr = "root";
	private String pwd = "root";
=======
	private String url = "jdbc:mysql://localhost:3306/hr?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT&allowPublicKeyRetrieval=true";
	private String usr = "root";
	private String pwd = "123456";
>>>>>>> cfa12f2 (Âº†ÂøóÊúãÁ¨¨‰∏ÄÊ¨°Êèê‰∫§)
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;

	public String getDrv() {
		return drv;
	}

	public void setDrv(String drv) {
		this.drv = drv;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUsr() {
		return usr;
	}

	public void setUsr(String usr) {
		this.usr = usr;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public Statement getStmt() {
		return stmt;
	}

	public void setStmt(Statement stmt) {
		this.stmt = stmt;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setRs(ResultSet rs) {
		this.rs = rs;
	}

	public boolean createConn() {
		boolean b = false;
		/*try {
			Class.forName(drv).newInstance();
			conn = DriverManager.getConnection(url, usr, pwd);
			b = true;
		} catch (SQLException e) {
		} catch (ClassNotFoundException e) {
		} catch (InstantiationException e) {
		} catch (IllegalAccessException e) {
		}*/
		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, usr, pwd);
            b = true;
        } catch (Exception e) {
            // TODO: handle exception
<<<<<<< HEAD
            System.out.println("ÔøΩÔøΩÔøΩ›øÔøΩÔøΩÔøΩÔøΩÔøΩ ßÔøΩÔøΩ");
=======
            System.out.println(" ˝æ›ø‚¡¨Ω” ß∞‹");
>>>>>>> cfa12f2 (Âº†ÂøóÊúãÁ¨¨‰∏ÄÊ¨°Êèê‰∫§)
            e.printStackTrace();
        }
		return b;
	}

	public void query(String sql) {
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		} catch (Exception e) {
		}
	}

<<<<<<< HEAD
	public boolean update(String sql) {//ÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩ…æÔøΩÔøΩÔøΩÔøΩ
=======
	public boolean update(String sql) {//∞¸∫¨‘ˆ°¢…æ°¢∏ƒ
>>>>>>> cfa12f2 (Âº†ÂøóÊúãÁ¨¨‰∏ÄÊ¨°Êèê‰∫§)
		boolean b = false;
		try {
			stmt = conn.createStatement();
			stmt.execute(sql);
			b = true;
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return b;
	}

	public boolean next() {
		boolean b = false;
		try {
			if (rs.next())
				b = true;
		} catch (Exception e) {
		}
		return b;
	}

	public String getValue(String field) {
		String value = null;
		try {
			if (rs != null)
				value = rs.getString(field);
		} catch (Exception e) {
		}
		return value;
	}

	public void closeConn() {
		try {
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
		}
	}

	public void closeStmt() {
		try {
			if (stmt != null)
				stmt.close();
		} catch (SQLException e) {
		}
	}

	public void closeRs() {
		try {
			if (rs != null)
				rs.close();
		} catch (SQLException e) {
		}
	}
}
