const String customerCreateMutation = r''' 
mutation MyMutation($email: String!, $password: String!) {
  customerCreate(input: {email: $email, password: $password}) {
    customer{
      acceptsMarketing
    addresses(first: 10) {
      edges {
        node {
          address1
          address2
          city
          company
          country
          countryCodeV2
          firstName
          id
          lastName
          latitude
          longitude
          name
          phone
          province
          provinceCode
          zip
        }
      }
    }
    createdAt
    defaultAddress {
      address1
      address2
      city
      company
      country
      countryCodeV2
      firstName
      id
      lastName
      latitude
      longitude
      name
      phone
      province
      zip
      provinceCode
    }
    tags
    displayName
    email
    firstName
    id
    lastIncompleteCheckout {
      completedAt
      createdAt
      currencyCode
      email
      id
      webUrl
      totalPriceV2 {
        amount
        currencyCode
      }
    }
  }
  }
}
''';

// mutation  {
// customerCreate($firstName : String, $lastName : String, $email : String!, $password : String!, $acceptsMarketing: Boolean, $phoneNumber: String)(
// input: {
// firstName: $firstName,
// lastName: $lastName,
// email: $email,
// password: $password,
// acceptsMarketing: $acceptsMarketing,
// phone: $phoneNumber
// }
// ) {
// customer {
// id
// firstName
// lastName
// email
// }
// customerUserErrors {
// field
// message
// }
// customer {
// id
// }
// }
// }