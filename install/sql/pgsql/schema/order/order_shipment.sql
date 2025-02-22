DROP TABLE IF EXISTS order_shipment;

DROP SEQUENCE IF EXISTS order_shipment_seq;
CREATE SEQUENCE order_shipment_seq;
-- SELECT setval('order_shipment_seq', 0, true); -- last inserted id by sample data


CREATE TABLE order_shipment (
  "order_shipment_id" int check ("order_shipment_id" > 0) NOT NULL DEFAULT NEXTVAL ('order_shipment_seq'),
  "order_id" int check ("order_id" > 0) NOT NULL,
  "shipping_method" varchar(191) NOT NULL,
  "tracking_number" varchar(191) NOT NULL,
  "created_at" timestamp(0) NOT NULL DEFAULT now(),
  PRIMARY KEY ("order_shipment_id")
);
