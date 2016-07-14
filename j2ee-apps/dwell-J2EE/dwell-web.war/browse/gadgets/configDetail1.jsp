<dsp:page>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="dsp" uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1" %>
<dsp:importbean bean="/atg/userprofiling/Profile"/>
<dsp:importbean bean="/atg/commerce/pricing/priceLists/PriceDroplet" />
<html>
<head><title>sku price</title></head>
<body>
   


<dsp:getvalueof var="sku" param="val"/>
<dsp:getvalueof var="product" param="prod"/>
<c:set var="sku" value="${sku}"/>
<c:set var="product" value="${product}"/>
<dsp:getvalueof var="sku" value="${sku}"/>
<dsp:getvalueof var="product" value="${product}" />


<c:if test="${empty sku}">
 <dsp:getvalueof var="childSKUs" param="product.childSKUs"/>
 <!-- <c:if test="${fn:length(childSKUs) eq 1}"> -->
      <dsp:getvalueof var="sku" value="${product.childSKUs[0]}"/>
   <!-- </c:if> -->
</c:if>

<dsp:droplet name="/atg/commerce/catalog/ProductLookup">
<dsp:param name="id" value="${product}"/>
<dsp:param value="product" name="elementName"/>
<dsp:oparam name="output">
 <dsp:getvalueof var="childSKUsId" param="product.childSKUs"/>
 <dsp:getvalueof var="skuId" value="${sku}"/>
 
 <dsp:droplet name="/atg/dynamo/droplet/ForEach">
<dsp:param name="array" param="product.childSKUs"/>
<dsp:param name="elementName" value="skuId"/>
<dsp:oparam name="output">
<dsp:getvalueof var="chSku" param="skuId.repositoryId"/>
<c:choose>
 <c:when test="${chSku==sku}">
 
 <dsp:getvalueof var="images" param="skuId.largeImage.url" />

    <img src="/dwellstore/${sku}" >
 </c:when>
 <c:otherwise>
 
 </c:otherwise>
 </c:choose>
</dsp:oparam>
</dsp:droplet>

</dsp:oparam>
</dsp:droplet>





</body>
</html>
</dsp:page>
 