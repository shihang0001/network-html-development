package SmartLight.vo;

public class Product {

private String proName;
private String proPrice;
private String proParameter;
private String proBuy;
private String proNum;
private String imgUrl;	
private String proInvetory;
	
	public String getImgUrl(){
		return imgUrl;	
	}
	public void setImgUrl(String imgUrl){
		this.imgUrl = imgUrl;
		
	}
	public String getProName(){
		return proName;
	}
	public void setProName(String proName){
		this.proName = proName;
	}
	public String getPrice(){
		return proPrice;
	}
	public void setPrice(String proPrice){
		this.proPrice = proPrice;
	}
	public String getParameter(){
		return proParameter;
	}
	public void setParameter(String proParameter){
		this.proParameter = proParameter;
	}
	public String getProInvetory(){
		return proInvetory;
	}
	public void setProInvetory(String proInvetory){
		this.proInvetory = proInvetory;
	}
	public String getProBuy(){
		return proBuy;
	}
	public void setProBuy(String proBuy){
		this.proBuy = proBuy;
	}
	public String getProNum(){
		return proNum;
	}
	public void setProNum(String proNum){
		this.proNum = proNum;
	}
}
	

