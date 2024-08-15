create database Global_Superstore;


use Global_Superstore;

ALTER TABLE DimProducts
ALTER COLUMN "Product ID" nvarchar(255) NOT NULL;

ALTER TABLE DimProducts
ADD CONSTRAINT PK_DimProducts PRIMARY KEY ("Product ID");

alter table factOrders
       add constraint fk_fact_orders_dim_product
	   foreign key ("Product ID")
	   references DimProducts("Product ID")
;