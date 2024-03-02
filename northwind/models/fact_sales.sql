with stg_orders as 
(
    select
        OrderID as SaleID,  
        {{ dbt_utils.generate_surrogate_key(['employeeid']) }} as employeekey, 
        {{ dbt_utils.generate_surrogate_key(['customerid']) }} as customerkey, 
        replace(to_date(orderdate)::varchar,'-','')::int as saledatekey,
    from {{source('northwind','Orders')}}
),
stg_order_details as
(
    select 
        orderid as salesid,
        sum(Quantity*UnitPrice*(1-Discount)) as totalsaleamount
    from {{source('northwind','Order_Details')}}
    group by orderid
)

select  
    o.*,
    od.*,

from stg_orders o
    join stg_order_details od on o.SaleID = od.salesid