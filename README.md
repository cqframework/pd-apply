# pd-apply
Test cases for PlanDefinition Apply Semantics

This Repo contains FHIR Implementation Guides and links to other Implementation
Guides in order to test PlanDefinition $apply semantics

## Setup

Make sure to init submodules:

```
> git submodule init && git submodule update
```

Then in each of `packages/encender` and `packages/apply-api`, make sure to run `npm install`.


## Layout

This repo has the following structure:

* content: Implementation guide(s) used to create CPG bundles
* examples: Example output of $apply
* packages/encender: A fork of encender to suppor experimental features
* packages/apply-api: A small REST API to implement $apply using the local encender

To run the local API, see [apply-api README](./packages/apply-api/README.md)


## To try running these PD-Apply operations in a web UI
Go to https://smart-on-fhir-17eef.web.app/ with the feature accessible by the "$apply custom PlanDefinition..." button at the bottom. Here you can add a transaction FHIR bundle with PlanDefinitions, ActivityDefinitions, Library, and ValueSets in order to test the RequestGroup implementation using Encender. Note: your Library will need to have a JSON ELM in it. 

To connect it to an EHR, we've been using https://smart-on-fhir-17eef.web.app/launch.html as the launch url, which directs us to a page to select which EHR we launched from. E.g. https://launch.smarthealthit.org/
