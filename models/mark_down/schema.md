{% docs customer_stage %}
customer_stage model:

The customer_stage model is used to represent staged customer data.
No transaformations have been applied at this stage.
The data is in its raw formmat.

 - /
 - /about
 - /team
 - /contact-us
{% enddocs %}


{% docs product_stage %}
product_stage model:

The product_stage model is used to represent staged product data.
No transaformations have been applied at this stage.
The data is in its raw formmat.

 - /
 - /about
 - /team
 - /contact-us
{% enddocs %}


{% docs customer_product_stage %}
customer_product_stage model:

The customer_product_stage model is used to represent staged customer_prodct data.
It represnts the relationship between customer and product.
No transaformations have been applied at this stage.
The data is in its raw formmat.

 - /
 - /about
 - /team
 - /contact-us
{% enddocs %}



{% docs customer_transfrm %}
customer_transfrm model:

The customer_transfrm model is used to represent transformed customer data.
Data transaformations have been applied to the staged customer model to bring it inline with usage crieria and standards.

 - /
 - /about
 - /team
 - /contact-us
{% enddocs %}


{% docs product_transfrm %}
product_transfrm model:

The product_transfrm model is used to represent transformed product data.
Data transaformations have been applied to the staged product model to bring it inline with usage crieria and standards.

 - /
 - /about
 - /team
 - /contact-us
{% enddocs %}


{% docs customer_product_transfrm %}
customer_product_transfrm:

The customer_product transfrm model is used to represent transformed customer_product data.
It represents the relationship between customer and product
Data transaformations have been applied to the staged customer_product model to bring it inline with usage crieria and standards.

 - /
 - /about
 - /team
 - /contact-us
{% enddocs %}



{% docs dim_customer %}
customer_presentation model:

The customer_presentation model is used to represent customer data in a dimensional format.
Additional transformations have been applied to the transformed model to bring it inline with usage crieria and standards.

 - /
 - /about
 - /team
 - /contact-us
{% enddocs %}


{% docs dim_product %}
product_presentation model:

The product_presentation model is used to represent product data in a dimensional format.
Additional transformations have been applied to the transformed model to bring it inline with usage crieria and standards.
 - /
 - /about
 - /team
 - /contact-us
{% enddocs %}


{% docs fact_sales %}
customer_product_presentation model:

The customer_product_presentation model is used to represent customer_product data in a dimensional format.
Additional transformations have been applied to the transformed model to bring it inline with usage crieria and standards.

 - /
 - /about
 - /team
 - /contact-us
{% enddocs %}