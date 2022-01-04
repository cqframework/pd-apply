# Apply API

This simulates a REST API implementing $apply.

## Starting

To start the service, you need to run `npm install`, then `npm run start`
providing an ENV with a path to a CPG Bundle. In this example, use the CHF
content:

```
> RESOLVER_INPUT=../../content/chf/output/Bundle-chf-bundle.json npm run start npm run start
```

## Running

Run the following CURL or Postman requests:

```
> curl localhost:9000/chf-pathway/$apply?subject=Patient/ExamplePatient
> curl localhost:9000/chf-pathway/$apply?subject=Patient/ExamplePatient&mergeNestedCareplans=1
> curl localhost:9000/chf-pathway/$apply?subject=Patient/ExamplePatient&requestGroupsOnly=1
```

The first is the standard behavior, the second simulates merging nested
careplans, and the last returns the structure as a request group (with
nesting).


NOTE: The `./examples/chf` directory in the root of this repo has these outputs.
