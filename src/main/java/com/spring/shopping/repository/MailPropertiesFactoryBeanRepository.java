package com.spring.shopping.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.config.AbstractFactoryBean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
public class MailPropertiesFactoryBeanRepository extends
		AbstractFactoryBean<Properties> {

	private JdbcTemplate jdbcTemplate;
	private String tableName;
	private String emailId;
	private String password;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource) ;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	
	@Override
	protected Properties createInstance() throws Exception {
		final Properties props = new Properties();
		String sql = "Select " + emailId + "," + password + " from "
				+ tableName;
		jdbcTemplate.query(sql, new RowCallbackHandler() {

			@Override
			public void processRow(ResultSet rs) throws SQLException {
				props.put(rs.getString(1), rs.getString(2));
			}
		});
		return props;
	}

	@Override
	public Class<?> getObjectType() {
		return Properties.class;
	}

}
