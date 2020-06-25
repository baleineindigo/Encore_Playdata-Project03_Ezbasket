package servlet.parser;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;
import model.productVO;
public class MusinsaParser implements Parser {
	@Override
	public productVO handle(String URL) {
		productVO product = null;
		try {
			System.out.println("start musinsa parser..");
			String shop ="Musinsa";
			//url
			String url = "https://store.musinsa.com/app/product/detail/994733/0";
			Document document = null;
			document = Jsoup.connect(url).get();
			
			//이름
			Element nameParentNode = document.select("span[class=product_title]").get(0);

			String name = nameParentNode.text();
			System.out.println("name: "+name);
			
			//가격
			String priceTag = document.select("span[id=goods_price]").text();
			int price = Integer.parseInt(priceTag.replaceAll(",", ""));
			System.out.println("price: "+price);
			//카테고리
			String category = document.select("p[class=item_categories]").text();
			System.out.println("category: "+category);
			
			//이미지
			String image = document.select("img#bigimg").get(0).toString();

			product = new productVO(name, price, shop, url, category, image);
			System.out.println("product-------------------------");
			System.out.println(product);
		} catch (IOException e) {
			System.out.println("MUSINSA PRODUCT -------------------------");
			e.printStackTrace();
		}
		return product;
	}	
}