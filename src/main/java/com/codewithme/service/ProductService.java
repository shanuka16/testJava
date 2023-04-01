package com.codewithme.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.codewithme.abc.model.Product;
import com.codewithme.dao.ProductManager;

public class ProductService {
	
	private static ProductService productServiceObject;
	
	private ProductService() {}
	
	public static synchronized ProductService getProductService() {
		if(productServiceObject == null) {
			productServiceObject = new ProductService();
		}
		
		return productServiceObject;
	}
	
	private ProductManager getProductManager(){
		return new ProductManager();
	}
	
	public boolean registerProduct(Product product) throws ClassNotFoundException, SQLException {
		return getProductManager().addProduct(product);
	}
	
	public Product getSpecificProduct(int productCode) throws ClassNotFoundException, SQLException {
		return getProductManager().getSpecificProduct(productCode);
	}
	
	public List<Product> getAllProducts() throws ClassNotFoundException, SQLException{
		return getProductManager().getAllProducts();
	}
	public boolean editTheProduct(Product product) throws ClassNotFoundException, SQLException {
		return getProductManager().updateProduct(product);
	}
	public boolean deleteTheProduct(int productCode) throws ClassNotFoundException, SQLException {
		return getProductManager().deleteProduct(productCode);
	}

}
