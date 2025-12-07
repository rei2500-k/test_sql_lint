create table users (
    id serial primary key,
    username varchar(50) not null unique,
    email varchar(100) not null unique,
    created_at timestamp default current_timestamp
);

create table orders (
    id serial primary key,
    user_id int references users (id),
    product_name varchar(100) not null,
    quantity int not null,
    order_date timestamp default current_timestamp
);
