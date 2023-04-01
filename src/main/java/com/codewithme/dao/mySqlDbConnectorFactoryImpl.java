package com.codewithme.dao;

public class mySqlDbConnectorFactoryImpl implements DbConnectoreFactory {

	@Override
	public DbConnector getDbConnector() {
		return new mySqlConnectorImpl();
	}

}
