WHERE (
a.start_date <= b.purchase_date 
AND a.end_date >= b.purchase_date
 ) 
OR b.purchase_date IS NULL