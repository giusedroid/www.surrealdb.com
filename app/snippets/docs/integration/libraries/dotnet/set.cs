// Assign the variable on the connection
await db.Set("name", new Name { FirstName = "Tobie", LastName = "Morgan Hitchcock" });

// Use the variable in a subsequent query
await db.Query("CREATE person SET name = $name");

// Use the variable in a subsequent query
await db.Query("SELECT * FROM person WHERE name.first_name = $name.first_name");