/*
The firstname and lastname columns of affiliations were used to establish a link to the professors table in the last exercise – so the appropriate professor IDs could be copied over. This only worked because there is exactly one corresponding professor for each row in affiliations. In other words: {firstname, lastname} is a candidate key of professors – a unique combination of columns.

It isn't one in affiliations though, because, as said in the video, professors can have more than one affiliation.

Because professors are referenced by professor_id now, the firstname and lastname columns are no longer needed, so it's time to drop them. After all, one of the goals of a database is to reduce redundancy where possible.

Instructions
------------
Drop the firstname and lastname columns from the affiliations table.


*/

-- Drop the firstname column
alter table affiliations
DROP column firstname;

-- Drop the lastname column
alter table affiliations 
drop column lastname;
