package com.DAO;

import com.entity.ProductDtls;

import java.util.List;

public interface ProductDAO {

    public boolean addProduct(ProductDtls b);
    public List<ProductDtls> getAllProduct();
    public ProductDtls getProductById(int id);
    public boolean updateEditProducts(ProductDtls b);
    public boolean deleteProduct(int id);
    public List<ProductDtls> getRecentProduct();



}
