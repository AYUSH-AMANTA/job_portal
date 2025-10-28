package com.dao;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.entity.News;
public class NewsDAO {
    private Connection conn;

    public NewsDAO(Connection conn) {
        this.conn = conn;
    }

    public List<News> getAllNews() {
        List<News> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM news ORDER BY id DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News();
                n.setId(rs.getInt("id"));
                n.setTitle(rs.getString("title"));
                n.setContent(rs.getString("content"));
                n.setPostDate(rs.getTimestamp("post_date"));
                list.add(n);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}