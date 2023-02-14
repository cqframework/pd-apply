Profile: FixedCPGComputableActivityDefinition
Parent: $cpg-computableactivity
Description: "fixes problem in cpg spec"
* profile = Canonical($cpg-documentmedicationtask) (exactly)
* kind = #Task (exactly)
* intent 1..1 MS
* intent = #proposal (exactly)
* doNotPerform 1..1 MS

