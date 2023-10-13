-- An ACL can be applied to any kind of resource (record)
DEFINE FIELD resource ON TABLE acl TYPE record;
-- We associate the acl with a user using record<user>
DEFINE FIELD user ON TABLE acl TYPE record<user>;

-- The permissions for the user+resource will be stored in an array.
DEFINE FIELD permissions ON TABLE acl TYPE array
  -- The array must not be empty because at least one permission is required to make a valid ACL
  ASSERT array::len($value) > 0;

-- Assigned permissions are identified by specific string values.
DEFINE FIELD permissions.* ON TABLE acl TYPE string
  -- Allow only these values in the array
  ASSERT $value INSIDE ["create", "read", "write", "delete"];

-- SEE IT IN ACTION
-- 1: Add users
CREATE user:tobie SET firstName = 'Tobie', lastName = 'Hitchcock',
  email = 'Tobie.Hitchcock@surrealdb.com';
CREATE user:abc SET firstName = 'A', lastName = 'B',
  email = 'c@d.com';
CREATE user:efg SET firstName = 'E', lastName = 'F',
  email = 'g@h.com';

-- 2: Create a resource
CREATE document:SurrealDB_whitepaper SET
  name = "some messaging queue";

-- 3: Associate with ACL
CREATE acl SET user = user:tobie, resource = document:SurrealDB_whitepaper, permissions = ["create", "write", "read"];
CREATE acl SET user = user:abc, resource = document:SurrealDB_whitepaper, permissions = ["read", "delete"];

-- Test Asserts using failure examples
-- A: Create ACL without permissions field
CREATE acl SET
  user = user:efg,
  permissions = [], # FAIL - permissions must not be empty
  resource = document:SurrealDB_whitepaper;
-- B: Create acl with invalid permisson
CREATE acl SET
  user = user:efg,
  permissions = ["all"], # FAIL - This value is not allowed in the array
  resource = document:SurrealDB_whitepaper;
