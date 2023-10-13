// Sign in or sign up as a scoped user
Jwt jwt = await db.SignUp(authParams);

await db.Authenticate(jwt);