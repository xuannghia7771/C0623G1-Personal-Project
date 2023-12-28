create database da_whey_clone;
use da_whey_clone;
create table app_role(
	role_id bigint not null auto_increment primary key,
    role_name varchar(255),
    created_at varchar(100),
    flag_deleted bit(1)
);
create table app_user(
	user_id bigint not null auto_increment primary key,
    user_name varchar(255),
    full_name varchar(255),
    pass_word varchar(255),
    email varchar(255),
    phone varchar(255),
    address varchar(255),
    flag_deleted bit(1)
);
create table user_role(
	user_role_id bigint not null auto_increment primary key,
    role_id bigint,
    user_id bigint,
    FOREIGN KEY (role_id) REFERENCES app_role(role_id),
    FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);
create table product_group(
	group_id bigint not null auto_increment primary key,
    group_name varchar(255)
);
create table product_type(
	type_id bigint not null auto_increment primary key,
    type_name varchar(255),
    group_id bigint,
    FOREIGN KEY (group_id) REFERENCES product_group(group_id)
);
create table product(
	product_id bigint not null auto_increment primary key,
    product_name varchar(255),
    price int,
    product_description longtext,
    flag_deleted bit(1),
    type_id bigint,
    FOREIGN KEY (type_id) REFERENCES product_type(type_id)
);
create table flavor(
	flavor_id bigint not null auto_increment primary key,
    flavor_name varchar(255)
);
create table product_flavor(
	product_flavor_id bigint not null auto_increment primary key,
    flavor_id bigint,
    product_id bigint,
    FOREIGN KEY (flavor_id) REFERENCES flavor(flavor_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);
create table product_image(
	image_id bigint not null auto_increment primary key,
    image_url longtext,
    product_id bigint,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);
create table product_order(
	order_id bigint not null auto_increment primary key,
    published_date datetime,
    flag_deleted bit(1),
    user_id bigint,
    FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);
create table order_detail(
	order_detail_id bigint not null auto_increment primary key,
    product_id bigint,
    order_id bigint,
    quantity int,
    price double,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (order_id) REFERENCES product_order(order_id)
);
create table cart_detail(
	cart_detail_id bigint not null auto_increment primary key,
    quantity int,
    user_id bigint,
    product_id bigint,
    FOREIGN KEY (user_id) REFERENCES app_user(user_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);