var person = new Person
{
    Id = new Thing("person", "tobie"), // Id is mandatory to apply create or update
    Name = "Tobie",
    Settings = new Settings
    {
        Active = true,
        Marketing = true,
    },
};

// Create a new record when it doesn't exist
var created = await db.Upsert(person);

// Update an existing record when it does exist
var updated = await db.Upsert(person);