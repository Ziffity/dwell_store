package dwellDroplet;

import atg.core.util.StringUtils;
import atg.repository.RepositoryItem;
import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;
import atg.servlet.DynamoServlet;
import javax.servlet.ServletException;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.List;

public class SEODroplet extends DynamoServlet{
 
 //input parameters
 private static final String PARAM_INPUT ="product";
 
 //output parameters
 private static final String PARAM_OUTPUT = "seo_url";
 private static final String PARAM_ERROR_MESSAGE = "errorMsg";

 //open parameters

 private static final String OPARAM_OUTPUT = "output";
 private static final String OPARAM_ERROR = "error";

  @Override
  
  public void service(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse) throws ServletException, IOException {
 
   RepositoryItem product= (RepositoryItem) pRequest.getObjectParameter(PARAM_INPUT);
   RepositoryItem defaultSKU= (RepositoryItem) product.getPropertyValue("defaultSKU");
   
   
   
  }
}