package hnust.cwz.javabeans;

public class BusinessBean {
	public boolean vaild(String account, String password) {
		boolean isVaild = false;
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "select * from user where account='" + account
					+ "'and password='" + password + "'";
			db.query(sql);
			if (db.next()) {
				isVaild = true;
			}
			db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
		return isVaild;
	}

	public boolean isExist(String account) {
		boolean isExist = false;
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "select * from user where account='" + account + "'";
			db.query(sql);
			if (db.next()) {
				isExist = true;
			}
			db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
		return isExist;
	}

	public void user_insert(String nickname, String account, String password,
			String email, String actualname, String identatyid, String time) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "insert into user(nickname,account,password,email,actualname,identatyid,time)values('"
					+ nickname
					+ "','"
					+ account
					+ "','"
					+ password
					+ "','"
					+ email
					+ "','"
					+ actualname
					+ "','"
					+ identatyid
					+ "','"
					+ time + "')";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}

	public void user_update(String nickname, String password, String email,
			String account) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "update user set nickname='" + nickname
					+ "',password='" + password + "',email='" + email
					+ "' where account='" + account + "'";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}

	public void user_delete(int id) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "delete from user where id='" + id + "'";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}

	public void department_insert(String name, String amount, String director) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "insert into department(name,amount,director)values('"
					+ name + "','" + amount + "','" + director + "')";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}

	public void department_update(String per_name, String name, String amount,
			String director) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "update department set name='" + name + "',amount='"
					+ amount + "',director='" + director + "' where name='"
					+ per_name + "'";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}

	public void department_delete(int id) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "delete from department where id='" + id + "'";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}

	public void staff_insert(String name, String sex, String age,
			String department, String position, String salary) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "insert into staff(name,sex,age,department,position,salary)values('"
					+ name
					+ "','"
					+ sex
					+ "','"
					+ age
					+ "','"
					+ department
					+ "','" + position + "','" + salary + "')";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}

	public void staff_update(String name, String sex, String age,
			String department, String position, String salary) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "update staff set sex='" + sex + "',age='" + age
					+ "',department='" + department + "',position='" + position
					+ "',salary='" + salary + "' where name='" + name + "'";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}

	public void staff_delete(int id) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "delete from staff where id='" + id + "'";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}

	public void salary_insert(String name, String price) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "insert into salary(name,price)values('" + name
					+ "','" + price + "')";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}

	public void salary_update(String name, String price) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "update salary set price='" + price + "' where name='"
					+ name + "'";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}
	
	public void training_insert(String time, String site, String content,String amount) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "insert into training(time,site,content,amount)values('"
					+ time
					+ "','"
					+ site
					+ "','"
					+ content
					+ "','"
					+ amount + "')";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}
	
	public void training_delete(int id) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "delete from training where id='" + id + "'";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}
	
	public void training_update(String per_content,String time, String site, String content,String amount) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "update training set time='" + time + "',site='" + site
					+ "',content='" + content +"',amount='" + amount + "' where content='" + per_content + "'";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}
	
	public void rewardpunishment_insert(String name, String category, String content) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "insert into rewardandpunishment(name,category,content)values('"
					+ name + "','" + category + "','" + content + "')";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}
	
	public void rewardpunishment_delete(int id) {
		DBAccessBean db = new DBAccessBean();
		if (db.createConn()) {
			String sql = "delete from rewardandpunishment where id='" + id + "'";
			db.update(sql);
			// db.closeRs();
			db.closeStmt();
			db.closeConn();
		}
	}
}
