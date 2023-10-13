// Configure a connection to use ns/db
client.Configure("ns", "db");

// Configure a connection to use ns/db, as well as root access (with username and password)
client.Configure("ns", "db", "root", "root");

// Configure a connection to use ns/db, as well as user auth via JWT token
string token = "eyJhbGciOiJIUzI1...";
client.Configure("ns", "db", token);