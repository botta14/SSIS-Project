use Global_Superstore;

ALTER TABLE DimCustomers
ALTER COLUMN "Customer ID" nvarchar(255) NOT NULL;

ALTER TABLE DimCustomers
ADD CONSTRAINT PK_DimCustomers PRIMARY KEY ("Customer ID");

alter table factOrders
       add constraint fk_fact_orders_dim_customer
	   foreign key ("Customer ID")
	   references DimCustomers("Customer ID")
;