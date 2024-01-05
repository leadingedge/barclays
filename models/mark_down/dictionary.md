{% docs customer_cust_id %}
  The primary key for the customer table.  
  The cust_id uniquely identified a customer.
  Source - dictionary.md
{% enddocs %}

{% docs customer_name %}
  This is the name associated with the customer.
  Source - dictionary.md
{% enddocs %}

{% docs customer_city %}
  This is the City location associated with the customer.
  Source - dictionary.md
{% enddocs %}

{% docs customer_postcode %}
  This is the Postcode location associated with the customer.
  Source - dictionary.md
{% enddocs %}



{% docs product_prod_id %}
  The primary key for the product table.
  The prod_id uniquely identified a product.
  Source - dictionary.md
{% enddocs %}

{% docs product_name %}
  This is the Name associated with the product.
  Source - barclays_docs.md
{% enddocs %}

{% docs product_unit_price %}
  The price per unit associated with a product.
  Unit is in pounds GBP
  Source - dictionary.md
{% enddocs %}



{% docs customer_product_transaction_date %}
  The Transaction date associated with the customer_product relationship.
  Source - dictionary.md
{% enddocs %}

{% docs customer_product_units_sold %}
  The number of products sold to the given customer on the given date.
  Source - dictionary.md
{% enddocs %}



{% docs dim_customer_date_time %}
  The date and time associated with the customer dimensional record.
  Source - dictionary.md
{% enddocs %}

{% docs dim_customer_hash_id %}
  The hash id associated with the customer dimensional record.
  Source - dictionary.md
{% enddocs %}



{% docs dim_product_date_time %}
  The date and time associated with the product dimensional record.
  Source - dictionary.md
{% enddocs %}

{% docs dim_product_hash_id %}
  The hash id associated with the product dimensional record. 
  Source- dictionary.md
{% enddocs %}




{% docs fact_sales_revenue %}
  The revenue amount associated with the sales fact record.
  Reveneue is defined as units_sold multiplied by unit_price.
  Source - dictionary.md
{% enddocs %}

{% docs fact_sales_date_time %}
  The date and time associated with the sales fact record.
  Sopurce - dictionary.md
{% enddocs %}

{% docs fact_sales_hash_id %}
  The hash id associated with the sales fact record.
  Source - dictionary.md
{% enddocs %}

