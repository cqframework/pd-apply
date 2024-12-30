Instance: RaMonitoringStrategy
InstanceOf: CPGStrategyDefinition
Usage: #definition
Title: "RA Monitoring Strategy"
* insert DefinitionMetadata(RaMonitoringStrategy, PlanDefinition)
* description = "Strategy for monitoring tests for antirheumatic drug therapy for Ra."
* action
  * title = "Recommend monitoring tests for antirheumatic drug therapy."
  * description = "Recommend monitoring tests for antirheumatic drug therapy."
  * code = $cpg-common-process#guideline-based-care
  * definitionCanonical = Canonical(RaMonitoringRecommendation|0.2.0)