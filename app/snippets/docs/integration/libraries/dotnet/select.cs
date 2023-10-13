// Select all records from a table
var people = await db.Select<Person>("person");

// Select a specific record from a table
var person = await db.Select<Person>("person", "h5wxrf2ewk8xjxosxtyc");

// Select a specific record from a table, equivalent to the above
var thing = new Thing("person", "h5wxrf2ewk8xjxosxtyc");
var person = await db.Select<Person>(thing);

// Select a specific record from a table, given a non-string id
var thing = Thing.From("person", new Guid("8424486b-85b3-4448-ac8d-5d51083391c7"));
var person = await db.Select<Person>(thing);