with fact_sales as (
    select * from {{ ref('fact_sales') }}
),
d_customer as (
    select * from {{ ref('dim_customer') }}
),
d_employee as (
    select * from {{ ref('dim_employee') }}
),
d_date as (
    select * from {{ ref('dim_date') }}
)
select 
    d_customer.*, 
    d_employee.*, 
    d_date.*,
    fact_sales.*
    from fact_sales as f
    left join d_customer on f.customerkey = d_customer.customerkey
    left join d_employee on f.employeekey = d_employee.employeekey
    left join d_date on f.saledatekey = d_date.datekey
