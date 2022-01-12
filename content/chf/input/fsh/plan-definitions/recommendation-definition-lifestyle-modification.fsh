Instance: chf-lifestyle-modification-recommendationdefinition
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
* insert SetMetadata(chf-lifestyle-modification-recommendationdefinition, PlanDefinition)
* title = "CHF Lifestyle Modification"
* type = $plan-definition-type#eca-rule
* description = "Behavioral weight control, includes 3 primary components: diet, exercise, and behavior therapy."

* action[+].id = "diet"
* action[=].title = "Diet change"
* action[=].textEquivalent = """
Obese individuals can lose weight by following reducing diets that vary widely
in macronutrient composition. Caloric restriction, however, rather than
macronutrient composition, is the key determinant of weight loss. A successful
reducing diet is one that an individual can adhere to for several months to
lose 5% to 10% of initial weight
"""

* action[+].id = "exercise"
* action[=].title = "Exercise"
* action[=].textEquivalent = """
Overweight and obese individuals initially should be encouraged to walk an
extra 2000 steps per day, which would expend ≈100 kcal more
"""

* action[+].id = "behavior"
* action[=].title = "Behavior Therapy"
* action[=].textEquivalent = """
Since its introduction in 1967, behavioral treatment has evolved into a
package that includes several components in addition to diet, exercise, and
self-monitoring. These components include slowing the rate of eating, stimulus
control, problem solving, cognitive restructuring, and relapse prevention
training. Detailed descriptions of this approach have been provided.
"""
