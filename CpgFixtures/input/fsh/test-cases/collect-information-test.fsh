Instance: CollectionInformationTest
InstanceOf: TestScript
* insert DefinitionMetadata(CollectionInformationTest, TestScript)
* fixture
  * id = "fixture-1"
  * autocreate = true
  * autodelete = true
  * resource = Reference(CollectInformationParameters)
* test
  * action[+]
    * operation
      * type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#apply
      * description = "Call Apply for CollectInformationActivity"
      * encodeRequestUrl = true
      * requestId = "fixture-1"
  * action[+]
    * assert
      * description = "Should be a CommunicationRequest"
      * warningOnly = false
      * path = "resourceType"
      * operator = #equals
      * value = "CommunicationRequest"
  * action[+]
    * assert
      * description = "Should be draft"
      * warningOnly = false
      * path = "status"
      * operator = #equals
      * value = "draft"