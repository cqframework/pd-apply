# Apply API

This simulates a REST API implementing $apply.

## Starting

To start the service, you need to run `npm install`, then `npm run start`
providing an ENV with a path to a CPG Bundle. In this example, use the CHF
content:

```
> RESOLVER_INPUT=../../content/chf/output/Bundle-chf-bundle.json npm run start npm run start
```

NOTE: If you are having problems with `npm run start`, you can try this:
```
> npm run build
> RESOLVER_INPUT=../../content/chf/output/Bundle-chf-bundle.json node dist/index.js
```

## Running

Run the following CURL or Postman requests:

```
> curl localhost:9000/chf-pathway/$apply?subject=Patient/ExamplePatient
> curl localhost:9000/chf-pathway/$apply?subject=Patient/ExamplePatient&mergeNestedCarePlans=1
> curl localhost:9000/chf-pathway/$apply?subject=Patient/ExamplePatient&requestGroupsOnly=1
```

The first is the standard behavior, the second simulates merging nested
careplans, and the last returns the structure as a request group (with
nesting).


NOTE: The `./examples/chf` directory in the root of this repo has these outputs.
