package org.group02.guitarshop.service;

import org.group02.guitarshop.entity.Category;
import org.group02.guitarshop.entity.Manufacturer;
import org.group02.guitarshop.entity.Product;
import org.group02.guitarshop.entity.ProductImage;

import java.util.List;
import java.util.Optional;

public interface ProductService {
    List<Category> listAllCategory();
    List<Manufacturer> listAllManufacturer();
    Product getProductById(Integer id);
    List<Product> searchProducts(String searchString);
    List<Product> getMostDiscountProducts();
    List<Product> getNewestProducts();
    void GetProductExtraInfo(Integer id);
    int getTotalRate();
    int[] getListCountRate();
    List<Product> getListRelatedProducts();
    double getAverageRate();
    List<ProductImage> getProductImage();
    List<Product> listAll();
    Optional<Product> findById(int id);
    Product save(Product product);
    void deleteById(int id);
}