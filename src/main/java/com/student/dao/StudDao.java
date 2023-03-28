package com.student.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class StudDao {
JdbcTemplate template;

public void setTemplate(JdbcTemplate template) {
	this.template = template;
}

public int save(Stud s) {
	String sql="insert into stud(name,gender,standard) values('"+s.getName()+"','"+s.getGender()+"','"+s.getStandard()+"')";
	return template.update(sql);
}

public int update(Stud s) {
	String sql="update Stud set name='"+s.getName()+"',gender='"+s.getGender()+"',standard='"+s.getStandard()+"' where id="+s.getId()+"";
	return template.update(sql);
}
public int delete(int id){    
    String sql="delete from stud where id="+id+"";    
    return template.update(sql);    
}    

public Stud getStudById(int id) {
	String sql="select * from stud where id=?";
	return template.queryForObject(sql, new Object[] {id}, new BeanPropertyRowMapper<Stud>(Stud.class));
}

public List<Stud> getStudById() {
	return template.query("select * from Stud",new RowMapper<Stud>() {
		public Stud mapRow(ResultSet rs, int row) throws SQLException{
			Stud st=new Stud();
			st.setId(rs.getInt(1));
			st.setName(rs.getString(2));
			st.setGender(rs.getString(3));
			st.setStandard(rs.getString(4));
			return st;
		}
	});
}
}
