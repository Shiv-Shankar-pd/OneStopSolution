package com.onestopsolution;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import com.zaxxer.hikari.HikariDataSource;

@SpringBootApplication
public class OneStopSolutionApplication {

	public static void main(String[] args) {
		SpringApplication.run(OneStopSolutionApplication.class, args);
	}
	

}
