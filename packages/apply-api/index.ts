import fastify from 'fastify'
import { applyPlan, simpleResolver } from 'encender'

const server = fastify({ logger: { prettyPrint: true } })

const resolverInput = process.env.RESOLVER_INPUT
if (!resolverInput) {
  throw new Error("Need to set RESOVER_INPUT as a file path to a CPG Bundle!")
}

const resolver = new simpleResolver(resolverInput)

interface IQuerystring {
  subject: string
  mergeNestedCarePlans?: boolean | false
  requestGroupsOnly?: boolean | false
}

interface IParams {
  planDefinitionId?: string | unknown
}

server.get<{
  Querystring: IQuerystring
}>('/:planDefinitionId/$apply', async (req, _res) => {
  const { planDefinitionId } = req.params as IParams

  const planDefinitions = resolver(`/PlanDefinition/${planDefinitionId}`)
  console.log("Plan defs", planDefinitions)
  const { query } = req
  const { subject, mergeNestedCarePlans, requestGroupsOnly } = query

  return applyPlan(planDefinitions[0], subject, resolver, {}, { mergeNestedCarePlans, requestGroupsOnly })
})

server.listen(9000, (err, address) => {
  if (err) {
    console.error(err)
    process.exit(1)
  }
  console.log(`Server listening at ${address}`)
})
