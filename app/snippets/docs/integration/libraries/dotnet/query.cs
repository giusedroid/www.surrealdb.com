// Assign the variable on the connection
var params = new Dictionary<string, object> { { "table", "person" } };
var result = await db.Query("CREATE person; SELECT * FROM type::table($table);", params);

// Get the first result from the first query
var created = result.GetValue<Person>(0);

// Get all of the results from the second query
var people = result.GetValue<List<Person>>(1);