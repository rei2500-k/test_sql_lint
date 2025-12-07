insert into users (
    username,
    email
) values
('hoge', 'hoge@example.com'),
('huga', 'huga@example.com');

insert into orders (
    user_id,
    product_name,
    quantity,
    order_date
) values
(1, 'Product A', 2, now()),
(1, 'Product B', 1, now()),
(2, 'Product C', 5, now());

select
    product_name,
    quantity,
    order_date,
    username,
    email
from
    orders
left join
    users on orders.user_id = users.id
where
    orders.id = '1';
