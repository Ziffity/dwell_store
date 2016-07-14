package endeca.search;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import atg.droplet.GenericFormHandler;


public class DwellSearchFormHandler extends GenericFormHandler{
 
 String intxt;
 String errorURL;
 String successURL;
 
 public String getSuccessURL() {
  return successURL;
 }

 public void setSuccessURL(String successURL) {
  this.successURL = successURL;
 }
 
 public String getIntxt() {
  return intxt;
 }

 public void setIntxt(String intxt) {
  this.intxt = intxt;
 }
 
 public String getErrorURl() {
  return errorURL;
 }

 public void setErrorURl(String errorURl) {
  this.errorURL = errorURl;
 }
 
 public boolean handleSearch(atg.servlet.DynamoHttpServletRequest request,
            atg.servlet.DynamoHttpServletResponse response) throws ServletException,IOException{
  
  intxt = intxt.replaceAll("[^\\p{L}\\p{Nd}]+", " ");
  String keyword = "";
  StringBuffer searchURL=new StringBuffer();
  keyword = URLEncoder.encode(intxt, "UTF-8");
  searchURL.append(successURL);
  searchURL.append("?Ntt=");
  searchURL.append(keyword);
  return checkFormRedirect(searchURL.toString(),errorURL,request,response);
  
  
 }

 
}