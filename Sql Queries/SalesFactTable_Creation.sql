
/*********************************************************************************************/

WITH latest_order_history AS (
    SELECT 
        order_id,
        MAX(status_date) AS latest_date
    FROM order_history
    GROUP BY order_id 	
)

SELECT cu.order_id , format(cu.order_date,'yyyy-MM-dd 00:00:00.000') as order_date ,ol.line_id , ol.book_id, cu.customer_id , cu.shipping_method_id ,
		os.status_value , ol.price 
FROM cust_order cu
JOIN order_line ol ON cu.order_id = ol.order_id
JOIN latest_order_history loh ON cu.order_id = loh.order_id
join order_history oh on loh.latest_date = oh.status_date and oh.order_id = loh.order_id
JOIN order_status os ON oh.status_id = os.status_id

/**********************************************************************/
