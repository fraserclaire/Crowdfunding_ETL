CREATE DATABASE crowdfunding_db;

CREATE TABLE category (
	category_id VARCHAR,
	category VARCHAR,
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR,
	subcategory VARCHAR,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
	contact_id INT,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR,
	PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
	cf_id INT,
	contact_id INT,
	company_name VARCHAR,
	description VARCHAR,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launched_date VARCHAR,
	end_date VARCHAR,
	staff_pick BOOLEAN,
	spotlight BOOLEAN,
	category_subcategory VARCHAR,
	category_id VARCHAR,
	subcategory_id VARCHAR,
	PRIMARY KEY (cf_id)
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

select * from campaign;
select * from category;
select * from subcategory;
select * from contacts;

