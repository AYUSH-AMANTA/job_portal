package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Jobs;
 
public class jobDAO {
	
	
	private Connection conn;

	public jobDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addJobs(Jobs j) {
		
		boolean f=false;
		
		
		try {
			String sql="insert into jobs(title,description,category,status,location)values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}
	public List<Jobs> getAllJobs() {
	    List<Jobs> list = new ArrayList<Jobs>();
	    Jobs j = null;

	    try {
	        String sql = "select * from jobs order by id desc";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            j = new Jobs();
	            j.setId(rs.getInt("id"));
	            j.setTitle(rs.getString("title"));
	            j.setDescription(rs.getString("description"));
	            j.setCategory(rs.getString("category"));
	            j.setStatus(rs.getString("status"));
	            j.setLocation(rs.getString("location"));
	            j.setPdate(rs.getTimestamp("pdate") + "");
	            list.add(j);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	
	public List<Jobs> getJobsByStatus() {
	    List<Jobs> list = new ArrayList<Jobs>();
	    Jobs j = null;

	    try {
	        String sql = "select * from jobs where status=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "Active");
	        ResultSet rs = ps.executeQuery();
	      
	        while (rs.next()) {
	            j = new Jobs();
	            j.setId(rs.getInt("id"));
	            j.setTitle(rs.getString("title"));
	            j.setDescription(rs.getString("description"));
	            j.setCategory(rs.getString("category"));
	            j.setStatus(rs.getString("status"));
	            j.setLocation(rs.getString("location"));
	            j.setPdate(rs.getTimestamp("pdate") + "");
	            list.add(j);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	public Jobs getJobsById( int id) {
	    
	    Jobs j = null;

	    try {
	        String sql = "select * from jobs where id=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setInt(1, id);
	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            j = new Jobs();
	            j.setId(rs.getInt("id"));
	            j.setTitle(rs.getString("title"));
	            j.setDescription(rs.getString("description"));
	            j.setCategory(rs.getString("category"));
	            j.setStatus(rs.getString("status"));
	            j.setLocation(rs.getString("location"));
	            j.setPdate(rs.getTimestamp("pdate") + "");
	          
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return j;
	}
	
public boolean updateJobs(Jobs j) {
		
		boolean f=false;
		
		
		try {
			String sql= "UPDATE jobs SET title=?, description=?, category=?, status=?, location=? WHERE id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			ps.setInt(6, j.getId());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}

   public boolean deleteJobs(int id) {
	   
	   boolean f=false;
		
		
		try {
			String sql= "delete from jobs  WHERE id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
	   
	   
           }
		
		catch(Exception e) {
			e.printStackTrace();
		}
		 return f;
			
	
	
	
	
	
 
}   
   
   public List<Jobs> getJobsByLocationORCategory(String location , String Category) {
	    List<Jobs> list = new ArrayList<Jobs>();
	    Jobs j = null;

	    try {
	        String sql = "select * from jobs where location=? or category=?" ;
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, location);
	        ps.setString(2, Category);
	        ResultSet rs = ps.executeQuery();
	      
	        while (rs.next()) {
	            j = new Jobs();
	            j.setId(rs.getInt("id"));
	            j.setTitle(rs.getString("title"));
	            j.setDescription(rs.getString("description"));
	            j.setCategory(rs.getString("category"));
	            j.setStatus(rs.getString("status"));
	            j.setLocation(rs.getString("location"));
	            j.setPdate(rs.getTimestamp("pdate") + "");
	            list.add(j);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
   
   
   public List<Jobs> getJobsByLocationAndCategory(String location , String Category) {
	    List<Jobs> list = new ArrayList<Jobs>();
	    Jobs j = null;

	    try {
	        String sql = "select * from jobs where location=? and category=?" ;
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, location);
	        ps.setString(2, Category);
	        ResultSet rs = ps.executeQuery();
	      
	        while (rs.next()) {
	            j = new Jobs();
	            j.setId(rs.getInt("id"));
	            j.setTitle(rs.getString("title"));
	            j.setDescription(rs.getString("description"));
	            j.setCategory(rs.getString("category"));
	            j.setStatus(rs.getString("status"));
	            j.setLocation(rs.getString("location"));
	            j.setPdate(rs.getTimestamp("pdate") + "");
	            list.add(j);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
   
   
}
