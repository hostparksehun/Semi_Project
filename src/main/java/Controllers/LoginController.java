package Controllers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;


@WebServlet("*.login")
public class LoginController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request.setCharacterEncoding("utf8");//post 한글깨짐 방지
		//String uri = request.getRequestURI();
		Gson gson = new Gson();
	
		String clientId = "hJtsJHj17cTSu5fTaM9q";//애플리케이션 클라이언트 아이디값";
	    String clientSecret = "7SJlHkaTPT";//애플리케이션 클라이언트 시크릿값";
	    String code = request.getParameter("code");
	    String state = request.getParameter("state");
	    String redirectURI = URLEncoder.encode("http://localhost/index.jsp", "UTF-8");
	    String apiURL;
	    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
	    apiURL += "client_id=" + clientId;
	    apiURL += "&client_secret=" + clientSecret;
	    apiURL += "&redirect_uri=" + redirectURI;
	    apiURL += "&code=" + code;
	    apiURL += "&state=" + state;
	    String access_token = "";
	    String refresh_token = "";
	    System.out.println("apiURL="+apiURL);
	    
	    try {
	      URL url = new URL(apiURL);
	      HttpURLConnection con = (HttpURLConnection)url.openConnection();
	      con.setRequestMethod("GET");
	      int responseCode = con.getResponseCode();
	      BufferedReader br;
	      System.out.print("responseCode="+responseCode);
	      if(responseCode==200) { // 정상 호출
	        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	      } else {  // 에러 발생
	        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	      }
	      String inputLine;
	      StringBuffer res = new StringBuffer();
	      while ((inputLine = br.readLine()) != null) {
	        res.append(inputLine);
	      }
	      br.close();
	      if(responseCode==200) {
	    	  System.out.println(res.toString());
	    	  String json = gson.toJson(res.toString());
	    	  
	    	  //JsonParser parsing = new JsonParser(); json형태로 변환
	    	  //Object obj = parsing.parse(res.toString()); object로 변환
	    	  //위에 두개 합쳐서 아래꺼
	    	  JsonElement element = JsonParser.parseString(json);
	    	  JsonObject jsonObject = new JsonObject();
	    	  //JsonObject jsonObj = (JsonObject)obj; //jsonobject로 다운캐스팅 
	    	  
	    	 // access_token = jsonObject.getString("access_token");
	    	  //refresh_token = jsonObject.getString("refresh_token");
	        
	        
	    	  if(access_token != null) { // access_token을 잘 받아왔다면
	    			try {
	    		    	// 이 안에 코드 작성
	    		    } catch (Exception e) {
	    		    	e.printStackTrace();
	    		    }
	    		}
	      }
	    } catch (Exception e) {
	      System.out.println(e);
	    }		
				
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
