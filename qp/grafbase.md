--- PRODUCTS at 2024-02-21 22:03:27.823392640 UTC ---
```graphql
query {
	topProducts {
		...Product_0
	}
}

fragment Product_0 on Product {
	name
	price
	upc
	weight
}
```

--- ACCOUNTS at 2024-02-21 22:03:27.823429971 UTC ---
```graphql
query {
	users {
		...User_0
	}
}

fragment User_0 on User {
	id
	username
	name
}
```

=======

--- INVENTORY at 2024-02-21 22:03:28.124022169 UTC ---
```graphql
query($representationsPlan1: [_Any!]!) {
	_entities(representations: $representationsPlan1) {
		__typename
		... on Product  {
			inStock
			shippingEstimate
		}
	}
}
```

--- REVIEWS at 2024-02-21 22:03:28.124018672 UTC ---
```graphql
query($representationsPlan2: [_Any!]!) {
	_entities(representations: $representationsPlan2) {
		__typename
		... on Product  {
			reviews {
				...Review_0
				author {
					...User_0
					reviews {
						...Review_0
						product {
							...Product_0
						}
					}
				}
			}
		}
	}
}

fragment Review_0 on Review {
	id
	body
}

fragment User_0 on User {
	id
	username
}

fragment Product_0 on Product {
	upc
}
```

--- REVIEWS at 2024-02-21 22:03:28.124036285 UTC ---
```graphql
query($representationsPlan7: [_Any!]!) {
	_entities(representations: $representationsPlan7) {
		__typename
		... on User  {
			reviews {
				...Review_0
				product {
					...Product_0
					reviews {
						...Review_0
						author {
							...User_0
							reviews {
								...Review_0
								product {
									...Product_0
								}
							}
						}
					}
				}
			}
		}
	}
}

fragment User_0 on User {
	id
	username
}

fragment Product_0 on Product {
	upc
}

fragment Review_0 on Review {
	id
	body
}
```


=====

--- PRODUCTS at 2024-02-21 22:03:28.224643814 UTC ---
```graphql
query($representationsPlan3: [_Any!]!) {
	_entities(representations: $representationsPlan3) {
		__typename
		... on Product  {
			name
			price
			weight
		}
	}
}
```

--- ACCOUNTS at 2024-02-21 22:03:28.224646940 UTC ---
```graphql
query($representationsPlan5: [_Any!]!) {
	_entities(representations: $representationsPlan5) {
		__typename
		... on User  {
			name
		}
	}
}
```


====


--- INVENTORY at 2024-02-21 22:03:28.324947594 UTC ---
```graphql
query($representationsPlan4: [_Any!]!) {
	_entities(representations: $representationsPlan4) {
		__typename
		... on Product  {
			inStock
			shippingEstimate
		}
	}
}
```


====


--- PRODUCTS at 2024-02-21 22:03:28.425576556 UTC ---
```graphql
query($representationsPlan8: [_Any!]!) {
	_entities(representations: $representationsPlan8) {
		__typename
		... on Product  {
			name
			price
			weight
		}
	}
}
```

--- ACCOUNTS at 2024-02-21 22:03:28.425520290 UTC ---
```graphql
query($representationsPlan10: [_Any!]!) {
	_entities(representations: $representationsPlan10) {
		__typename
		... on User  {
			name
		}
	}
}
```


====


--- PRODUCTS at 2024-02-21 22:03:28.525636451 UTC ---
```graphql
query($representationsPlan11: [_Any!]!) {
	_entities(representations: $representationsPlan11) {
		__typename
		... on Product  {
			name
			price
			weight
		}
	}
}
```


--- INVENTORY at 2024-02-21 22:03:28.526322017 UTC ---
```graphql
query($representationsPlan9: [_Any!]!) {
	_entities(representations: $representationsPlan9) {
		__typename
		... on Product  {
			inStock
			shippingEstimate
		}
	}
}
```

====

--- INVENTORY at 2024-02-21 22:03:28.626815844 UTC ---
```graphql
query($representationsPlan12: [_Any!]!) {
	_entities(representations: $representationsPlan12) {
		__typename
		... on Product  {
			inStock
			shippingEstimate
		}
	}
}
```


