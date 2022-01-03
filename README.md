# pd-apply
Test cases for PlanDefinition Apply Semantics

This Repo contains FHIR Implementation Guides and links to other Implementation
Guides in order to test PlanDefinition $apply semantics


## Layout

This repo has the following structure:

Make sure to init submodules:

```
> git submodule init
```

* content: Implementation guide(s) used to create CPG bundles
* examples: Example output of $apply
* packages/encender: A fork of encender to suppor experimental features
* packages/apply-api: A small REST API to implement $apply using the local encender

To run the local API, see [apply-api README](./packages/apply-api/README.md)