use Global_Superstore;

ALTER TABLE DimLocations
ALTER COLUMN LocationID int NOT NULL;

ALTER TABLE DimLocations
ADD CONSTRAINT PK_DimLocations PRIMARY KEY (LocationID);

alter table factOrders
       add constraint fk_fact_orders_dim_location
	   foreign key (LocationID)
	   references DimLocations(LocationID)
;