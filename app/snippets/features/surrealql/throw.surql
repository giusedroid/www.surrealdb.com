FOR $user IN $input {
	IF $user.age < 18 {
		THROW "Only adults should be inserted";
	}
	IF $user.country != 'USA' {
		THROW $user.country + " is not a valid country";
	}
};
