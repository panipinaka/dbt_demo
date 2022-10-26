with payment as (
    
    select 
        id as customer_id,
        ORDERID as order_id,
        paymentmethod,
        status,
        amount

    from raw.stripe.payment
)

select * from payment