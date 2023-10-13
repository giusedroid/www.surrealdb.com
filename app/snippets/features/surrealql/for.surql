FOR $person IN (SELECT VALUE id FROM person) {
	CREATE gift CONTENT {
		recipient: $person,
		type: "ticket",
		date: time::now(),
		event: "SurrealDB World",
	};
};
