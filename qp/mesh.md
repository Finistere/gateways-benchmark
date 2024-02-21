======
--- PRODUCTS at 2024-02-21 21:57:26.140921790 UTC ---
```graphql
query TestQuery($_v0_first: Int) {
  __typename
  topProducts(first: $_v0_first) {
    ...Product
    __typename
    upc
  }
}

fragment Product on Product {
  __typename
  upc
  name
  price
  price
  weight
  upc
  weight
}
```
--- ACCOUNTS at 2024-02-21 21:57:26.140814688 UTC ---
```graphql
query TestQuery {
  __typename
  users {
    ...User
    __typename
    id
  }
}

fragment User on User {
  id
  __typename
  id
  username
  name
}
```
=====

--- INVENTORY at 2024-02-21 21:57:26.449506045 UTC ---
```graphql
query TestQuery($_0__v0_representations: [_Any!]!, $_1__v0_representations: [_Any!]!) {
  _0___typename: __typename
  _0__entities: _entities(representations: $_0__v0_representations) {
    ... on Product {
      __typename
      upc
      inStock
    }
    __typename
  }
  _1___typename: __typename
  _1__entities: _entities(representations: $_1__v0_representations) {
    ... on Product {
      __typename
      shippingEstimate
    }
    __typename
  }
}
```

--- REVIEWS at 2024-02-21 21:57:26.446240333 UTC ---
```graphql
query TestQuery($_v0_representations: [_Any!]!) {
  __typename
  _entities(representations: $_v0_representations) {
    ... on User {
      __typename
      id
      reviews {
        ...Review
        product {
          ...Product
          __typename
          upc
          reviews {
            ...Review
            author {
              ...User
              __typename
              id
              reviews {
                ...Review
                product {
                  ...Product
                }
              }
            }
          }
        }
      }
    }
    __typename
  }
}

fragment User on User {
  id
  __typename
  id
  username
}

fragment Product on Product {
  __typename
  upc
  upc
}

fragment Review on Review {
  id
  body
}
```
--- REVIEWS at 2024-02-21 21:57:26.446240323 UTC ---
```graphql
query TestQuery($_v0_representations: [_Any!]!) {
  __typename
  _entities(representations: $_v0_representations) {
    ... on Product {
      __typename
      upc
      reviews {
        ...Review
        author {
          ...User
          __typename
          id
          reviews {
            ...Review
            product {
              ...Product
            }
          }
        }
      }
    }
    __typename
  }
}

fragment Product on Product {
  __typename
  upc
  upc
}

fragment User on User {
  id
  __typename
  id
  username
}

fragment Review on Review {
  id
  body
}
```

========

--- ACCOUNTS at 2024-02-21 21:57:26.551811091 UTC ---
```graphql
query TestQuery($_v0_representations: [_Any!]!) {
  __typename
  _entities(representations: $_v0_representations) {
    ... on User {
      __typename
      id
      name
    }
    __typename
  }
}
```

========

--- PRODUCTS at 2024-02-21 21:57:26.654960718 UTC ---
```graphql
query TestQuery($_v0_representations: [_Any!]!) {
  __typename
  _entities(representations: $_v0_representations) {
    ... on Product {
      __typename
      upc
      name
      price
      price
      weight
      weight
    }
    __typename
  }
}
```


