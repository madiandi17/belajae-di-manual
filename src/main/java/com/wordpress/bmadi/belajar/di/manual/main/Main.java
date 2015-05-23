package com.wordpress.bmadi.belajar.di.manual.main;

import com.wordpress.bmadi.belajar.di.manual.dao.ProdukDao;
import com.wordpress.bmadi.belajar.di.manual.dao.UserDao;
import com.wordpress.bmadi.belajar.di.manual.model.Produk;
import com.wordpress.bmadi.belajar.di.manual.model.User;
import java.math.BigDecimal;
import org.apache.commons.dbcp2.BasicDataSource;

public class Main {

    public static void main(String[] args) throws Exception {

        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost/belajar");
        dataSource.setUsername("root");
        dataSource.setPassword("admin");
        
        // silahkan buka file sql
    }

}
