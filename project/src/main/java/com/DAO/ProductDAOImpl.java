package com.DAO;
import com.entity.ProductDtls;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAOImpl implements ProductDAO {

private Connection conn;

public ProductDAOImpl(Connection conn) {
    super();
        this.conn = conn;
        }


    public boolean addProduct(ProductDtls b) {
    boolean f = false;
    try {
        String sql="insert into product_dtls(productname,author,price,productCategory,status,photo,email) values(?,?,?,?,?,?,?)";
        PreparedStatement ps= conn.prepareStatement(sql);
        ps.setString(1, b.getProductname());
        ps.setString(2, b.getAuthor());
        ps.setString(3, b.getPrice());
        ps.setString(4, b.getProductCategory());
        ps.setString(5, b.getStatus());
        ps.setString(6, b.getPhotoName());
        ps.setString(7, b.getEmail());

        int i = ps.executeUpdate();

        if(i==1) {
            f = true;
        }

    } catch (Exception e) {
        e.printStackTrace();


    }
        return f;
    }

    public List <ProductDtls> getAllProduct() {
        List<ProductDtls> list=new ArrayList<ProductDtls>();
        ProductDtls b=null;


        try {
            String sql="select * from product_dtls";
            PreparedStatement ps=this.conn.prepareStatement(sql);
            java.sql.ResultSet rs=ps.executeQuery();

            while(rs.next()) {
                b = new ProductDtls();
                b.setProductId(rs.getInt(1));
                b.setProductname(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setProductCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhotoName(rs.getString(7));
                b.setEmail(rs.getString(8));
                list.add(b);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public ProductDtls getProductById(int Id) {
        ProductDtls b=null;
        try{
            String sql="select * from product_dtls where productId=?";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setInt(1, Id);

            ResultSet rs=ps.executeQuery();
            while (rs.next()) {
                b = new ProductDtls();
                b.setProductId(rs.getInt(1));
                b.setProductname(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setProductCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhotoName(rs.getString(7));
                b.setEmail(rs.getString(8));



            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return b;
    }

    public boolean updateEditProducts(ProductDtls b) {
        boolean f=false;

        try {
             String sql="update product_dtls set productname=?,author=?,price=?,status=? where productId=?";
             PreparedStatement ps=conn.prepareStatement(sql);
             ps.setString(1, b.getProductname());
             ps.setString(2, b.getAuthor());
             ps.setString(3, b.getPrice());
             ps.setString(4, b.getStatus());
             ps.setInt(5, b.getProductId());

                int i=ps.executeUpdate();
                if(i==1) {
                    f=true;
                }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean deleteProduct(int id) {
    boolean f=false;
    try {
         String sql="delete from product_dtls where productId=?";
         PreparedStatement ps=conn.prepareStatement(sql);
         ps.setInt(1, id);
         int i = ps.executeUpdate();
         if (i==1) {
             f=true;
         }
    } catch (Exception e) {
        e.printStackTrace();
    }
        return f;
    }



    @Override
    public List<ProductDtls> getRecentProduct() {
        List <ProductDtls> list=new ArrayList<ProductDtls>();
        ProductDtls b=null;
        try {
            String sql="select * from product_dtls order by productId DESC";
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            int i=1;
            while (rs.next()) {
                b = new ProductDtls();
                b.setProductId(rs.getInt(1));
                b.setProductname(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setProductCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhotoName(rs.getString(7));
                b.setEmail(rs.getString(8));
                list.add(b);
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
