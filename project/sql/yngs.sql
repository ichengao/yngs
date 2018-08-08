CREATE TABLE `category` (
`category_id` bigint NOT NULL COMMENT '品种id',
`category_name` varchar(255) NOT NULL COMMENT '品种名称',
PRIMARY KEY (`category_id`) 
);

CREATE TABLE `product` (
`product_id` bigint NOT NULL,
`category_id` bigint NOT NULL,
`product_name` varchar(100) NOT NULL,
`product_price` decimal NULL,
`product_desc` text NULL,
`product_image` text NULL,
`is_hot` char NULL DEFAULT 0 COMMENT '是否为热门品种  0为不是1为是',
PRIMARY KEY (`product_id`) 
);


ALTER TABLE `category` ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `product` (`product_id`);

