# Testing $apply

Testing $apply operation for ActivityDefinition and PlanDefinition resources,
as seen in the CPG IG.

## Generating content

This is a sushi project, see https://fshschool.org/docs/sushi for installing
the required tooling.

To create the full IG, including compile the CQL and update corresponding FHIR,
and clean the output to only have FHIR json files, use this command from the
project root:

```
./bin/build-ig
```

## Testing

Load the postman collection, found in `./postman`. The requests in the
collection have both the key resource (e.g. the `PlanDefinition` or
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


Then in postman, from the "CPG Unit Tests - Activity Definitions" collection
view, press the "Run" button. Failing tests will show in the postman console
with the actual and expected for review.

### Using an instance of HAPI as a local content and terminology server:

You could use HAPI as a local content and terminology server:
```
docker run -p 8080:8080 hapiproject/hapi:latest
```

Then, the sequence of commands to build, bundle, then upload generated content is:
```
./bin/build-ig
./bin/bundle-ig
./bin/upload-bundle ./output/Bundle-generated-bundle.json http://localhost:8080/fhir
```

### Test cases

To view a summary of test cases visit
https://docs.google.com/spreadsheets/d/1oy5Bj7DJUbvAv__2IEy838c24Nkjzs15oSl97yQ85cM/edit?usp=sharing
