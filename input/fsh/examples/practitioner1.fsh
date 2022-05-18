Instance:   practitioner1
InstanceOf: NorthernRegionPractitioner
//BaseType: Patient
Description: "An example patient using PractitionerRole for the GP link."
Usage: #example

* extension[nz-ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4#11111 "New Zealand European"

* name.family = "Welby"
* name.given = "Marcus"
* name.text = "Marcus Welby"

* identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier.value = "hpi-person-001"


* telecom.system = #other
* telecom.system.extension[$edi-address].valueString = "healthlink"
* telecom.value = "abx234"