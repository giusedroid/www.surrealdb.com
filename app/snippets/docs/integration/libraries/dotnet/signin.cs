// Option 1: Sign in as root user
await db.SignIn(new RootAuth { Username = "root", Password = "root" });

// Option 2: Sign in using namespace auth
await db.SignIn(
    new NamespaceAuth
    {
        Namespace = "test", 
        Username = "johndoe", 
        Password = "password123" 
    }
);

// Option 3: Sign in using database auth
await db.SignIn(
    new DatabaseAuth
    {
        Namespace = "test", 
        Database = "test", 
        Username = "johndoe", 
        Password = "password123" 
    }
);

// Option 4: Sign in as a scoped used
var authParams = new AuthParams
{
    Namespace = "test",
    Database = "test",
    Scope = "user",
    Email = "info@surrealdb.com",
    Password = "123456"
};

Jwt jwt = await db.SignIn(authParams);

public class AuthParams : ScopeAuth
{
	public string? Username { get; set; }
	public string? Email { get; set; }
	public string? Password { get; set; }
}