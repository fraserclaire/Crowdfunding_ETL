select * from campaign;
select * from category;
select * from subcategory;
select * from contacts;

-- 1. Add the campaign dataframe
select campaign.cf_id,
	campaign.contact_id
	campaign.category_id
	campaign.subcategory_id
	contacts.contact_id
from campaign
INNER JOIN contacts ON
contacts.contact_id = campaign.contact_id
INNER JOIN category ON
category.category_id = campaign.category_id
INNER JOIN subcategory ON
subcategory.subcategory_id = campaign.subcategory_id;

