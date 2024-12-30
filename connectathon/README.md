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

### Using an instance of HAPI as a local content and terminology server:

You could use HAPI as a local content and terminology server:
```
docker run -p 8080:8080 hapiproject/hapi:latest
```

There is the sequence of scripts provided to build, bundle, then upload
generated content:
```
./bin/build-ig
./bin/bundle-artifacts
./bin/put-artifacts
```

### Test cases

To view a summary of test cases visit
https://docs.google.com/spreadsheets/d/1oy5Bj7DJUbvAv__2IEy838c24Nkjzs15oSl97yQ85cM/edit?usp=sharing
