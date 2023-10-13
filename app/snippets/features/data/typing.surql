// Ensure that a record field must be a number.
DEFINE FIELD age ON person TYPE number;

// Allow the field to be optional or a number.
DEFINE FIELD age ON person TYPE option<number>;

// Ensure that a record link is specified and of a specific type.
DEFINE FIELD author ON book TYPE record<person>;

// Allow a field to be optional and of a selection of types.
DEFINE FIELD pet ON user TYPE option<record<cat | dog>>;

// Allow a field to be one of multiple types.
DEFINE FIELD rating ON film TYPE float | decimal;

// Ensure that a field is an a array of unique values of a certain length.
DEFINE FIELD tags ON person TYPE set<string, 5>;
