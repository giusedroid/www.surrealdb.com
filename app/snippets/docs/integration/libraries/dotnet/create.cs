// Create a record with a random ID
var person = await db.Create<Person>("person");

// Create a record with a random ID & specific fields
var person = await db.Create("person", new Person { Name = "Tobie" });

// Create a record with a specific ID
var personToCreate = new Person
{
    Id = new Thing("person", "tobie"),
    Name = "Tobie",
    Settings = new Settings
    {
        Active = true,
        Marketing = true,
    },
};
var result = await db.Create(personToCreate);