package com.entity;

public class ProductDtls {
    private int productId;
    private String productname;
    private String author;
    private String price;
    private String productCategory;
    private String status;
    private String photoName;
    private String email;

    public ProductDtls() {
        super();
    }
    public ProductDtls(String productname, String author, String price, String productCategory, String status, String photoName, String email) {
        super();
        this.productname = productname;
        this.author = author;
        this.price = price;
        this.productCategory = productCategory;
        this.status = status;
        this.photoName = photoName;
        this.email = email;}

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPhotoName() {
        return photoName;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "ProductDtls{" +
                "productId=" + productId +
                ", productname='" + productname + '\'' +
                ", author='" + author + '\'' +
                ", price=" + price +
                ", productCategory='" + productCategory + '\'' +
                ", status='" + status + '\'' +
                ", photoName='" + photoName + '\'' +
                ", email='" + email + '\'' +
                '}';

    }

}
