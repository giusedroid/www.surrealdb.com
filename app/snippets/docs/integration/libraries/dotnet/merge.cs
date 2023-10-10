// Only changes the fields specified in the merge object
var merge = new PersonMerge
{
    Id = new Thing("person", "tobie"),
    Settings = new Settings
    {
        Active = true,
        Marketing = false,
    },
};
var result = await db.Merge<PersonMerge, Person>(merge);

// Only changes the fields specified in the Dictionary
var thing = new Thing("person", "tobie");
var data = new Dictionary<string, object>
{
    { "tags", new List<string> { "developer", "engineer" } }
};

var result = await db.Merge<Person>(thing, data);
