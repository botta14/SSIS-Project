use Global_Superstore;

ALTER TABLE DimTime
ALTER COLUMN TimeID int NOT NULL;

ALTER TABLE DimTime
ADD CONSTRAINT PK_DimTime PRIMARY KEY (TimeID);

alter table factOrders
       add constraint fk_fact_orders_dim_time
	   foreign key (TimeID)
	   references DimTime(TimeID)
;