// Delete all records from a table
await db.Delete("person");

// Delete a specific record from a table
await db.Delete("person", "h5wxrf2ewk8xjxosxtyc");

// Delete a specific record from a table, equivalent to the above
var thing = new Thing("person", "h5wxrf2ewk8xjxosxtyc");
await db.Delete(thing);
