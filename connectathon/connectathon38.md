# Testing $apply

Testing $apply operation for ActivityDefinition and PlanDefinition resources, as seen in the CPG IG.

## Content

This IG includes example content based on CPG 2.0. To see content using CPG 1.0, refer fo `CPGFixtures_1.0`.

Pre-generated content is included for each IG in respective `output` folders.

### Generating content

This is a sushi project, see https://fshschool.org/docs/sushi for installing
the required tooling.

To generate the full IG locally, including compile the CQL and update corresponding FHIR,
and clean the output to only have FHIR json files, use this command from the
project root:

```
./bin/build-ig
```

## Testing

Load the postman collections, found in `./postman`. The requests in the
collections have both the key resource (e.g. the `PlanDefinition` or
`ActivityDefinition`) as well as fixture data (as the `data` parameter) copied
from the generated content.

Then you might need to update the collection variables:


| Variable                | Description                           |
|-------------------------|---------------------------------------|
| cpgServer               | your $apply implementation address    |
| contentEndpointAddress  | FHIR Artifact server address          |
| contentEndpointType     | Type of server (e.g. `hl7-fhir-rest`) |
| contentEndpointAddress  | FHIR Terminology server address       |
| contentEndpointType     | Type of server (e.g. `hl7-fhir-rest`) |


Then in postman, press the "Run" button. Failing tests will show in the postman console
with the actual and expected for review. Same for the Plan Definitions.

### Test Servers

The CPG 2.0 Activity and Plan Definition $apply tests are configured to use the following endpoints:
* Content and Terminology:
  The content in this IG CPGFixtures 2.0 is loaded to https://reason-framework-test-content-abdc3f75e0f9.herokuapp.com/fhir
* $apply Engine:
  The reference implementation endpoint is https://reason-framework-9830c4af7a50.herokuapp.com

### Test cases

To view a summary of test cases visit
https://docs.google.com/spreadsheets/d/1oy5Bj7DJUbvAv__2IEy838c24Nkjzs15oSl97yQ85cM/edit?usp=sharing
