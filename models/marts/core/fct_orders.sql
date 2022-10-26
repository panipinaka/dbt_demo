with payment as (

    select * from {{ ref('stg_payments')}}

),

orders as (

    select * from {{ ref('stg_orders') }}

),

final as (

    select
        orders.customer_id,
        orders.order_id,
        payment.amount,
        orders.order_date

    from orders

    left join payment using (order_id)

)

select * from final