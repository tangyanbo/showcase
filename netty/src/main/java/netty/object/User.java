package netty.object;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 对象必须要implements java.io.Serializable接口
 * 否则会出现阻塞现象，发送对象不成功
 * @author 唐延波
 * @date 2015年7月7日
 */
public class User implements java.io.Serializable{

	private int id;

	private String name;

	private Date date;

	private List<User> user = new ArrayList<User>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<User> getUser() {
		return user;
	}

	public void setUser(List<User> user) {
		this.user = user;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		StringBuffer s = new StringBuffer();
		s.append("id:"+id);
		s.append("\n\r");
		s.append("name:"+name);
		s.append("\n\r");
		s.append("date:"+date);
		
		return s.toString();
	}

	
}
