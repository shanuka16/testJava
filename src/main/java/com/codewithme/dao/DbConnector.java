package com.codewithme.dao;

import java.sql.Connection;
import java.sql.SQLException;

public interface DbConnector {

	Connection getDbConnection() throws ClassNotFoundException, SQLException;
}
