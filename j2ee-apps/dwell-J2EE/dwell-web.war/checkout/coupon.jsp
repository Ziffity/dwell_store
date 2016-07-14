<dsp:importbean bean="/atg/commerce/promotion/CouponFormHandler"/>
<dsp:form  method="post" id="discount-coupon-form">
<fieldset>
<label for="coupon_code">Enter a promotional code.</label>
<div class="v-fix"><dsp:input bean="CouponFormHandler.couponClaimCode" type="text" id="coupon_code" class="input-text" /></div>
<dsp:input bean="CouponFormHandler.claimCoupon" class="input-coupon" type="submit" value="Apply Promo Code" />
</fieldset>
</dsp:form>