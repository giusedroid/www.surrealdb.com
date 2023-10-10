var authParams = new AuthParams
{
    Namespace = "test",
    Database = "test",
    Scope = "user",
    Email = "info@surrealdb.com",
    Password = "123456"
};

Jwt jwt = await db.SignUp(authParams);

public class AuthParams : ScopeAuth
{
	public string? Username { get; set; }
	public string? Email { get; set; }
	public string? Password { get; set; }
}