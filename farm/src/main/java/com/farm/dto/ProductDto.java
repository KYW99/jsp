package com.farm.dto;

import java.util.List;

public class ProductDto {

    private String proname;
    private int product_id;
    private String category;
    private int price;
    private int points;
    private String discount;
    private String delivery_cost;
    private int stock;
    private String pro_img_list;
    private String pro_img_inf;
    private String pro_img_desc;
    private String etc;
    private String rdate;

    private List<FileDto> files;
    
    
    
    
    public List<FileDto> getFiles() {
		return files;
	}

	public void setFiles(List<FileDto> files) {
		this.files = files;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProname() {
        return proname;
    }

    public void setProname(String proname) {
        this.proname = proname;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setPrice(String price) {
        this.price = parseIntOrDefault(price, 0);
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    public void setPoints(String points) {
        this.points = parseIntOrDefault(points, 0);
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }
    

    public String getDelivery_cost() {
        return delivery_cost;
    }

    public void setDelivery_cost(String delivery_cost) {
        this.delivery_cost = delivery_cost;
    }


    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public void setStock(String stock) {
        this.stock = parseIntOrDefault(stock, 0);
    }

    public String getPro_img_list() {
        return pro_img_list;
    }

    public void setPro_img_list(String pro_img_list) {
        this.pro_img_list = pro_img_list;
    }

    public String getPro_img_inf() {
        return pro_img_inf;
    }

    public void setPro_img_inf(String pro_img_inf) {
        this.pro_img_inf = pro_img_inf;
    }

    public String getPro_img_desc() {
        return pro_img_desc;
    }

    public void setPro_img_desc(String pro_img_desc) {
        this.pro_img_desc = pro_img_desc;
    }

    public String getEtc() {
        return etc;
    }

    public void setEtc(String etc) {
        this.etc = etc;
    }

    
  
   

	@Override
	public String toString() {
		return "ProductDto [proname=" + proname + ", product_id=" + product_id + ", category=" + category + ", price="
				+ price + ", points=" + points + ", discount=" + discount + ", delivery_cost=" + delivery_cost
				+ ", stock=" + stock + ", pro_img_list=" + pro_img_list + ", pro_img_inf=" + pro_img_inf
				+ ", pro_img_desc=" + pro_img_desc + ", etc=" + etc + ", rdate=" + rdate + "]";
	}

	// 숫자 변환과 null 체크를 위한 메서드
    private int parseIntOrDefault(String value, int defaultValue) {
        if (value == null || value.isEmpty()) {
            return defaultValue;
        }
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }
}
