
Instance:   patient1
InstanceOf: NorthernRegionPatient
//BaseType: Patient
Description: "An example patient using PractitionerRole for the GP link."
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* text.status = #additional


* extension[nz-ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4#11111 "New Zealand European"
* extension[nz-ethnicity][+].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4#12111 "Celtic"

* extension[birth-place].extension[country].valueCodeableConcept = urn:iso:std:iso:3166#NZ
* extension[birth-place].extension[place-of-birth].valueString = "Palmerston North"

* extension[nz-citizenship].extension[status].valueCodeableConcept =  https://standards.digital.health.nz/ns/citizenship-status#CIT "Citizen"
* extension[nz-citizenship].extension[source].valueCodeableConcept =  https://standards.digital.health.nz/ns/info-source#PPRT "Passport"

* extension[sex-at-birth].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"

//* extension[nz-residency-status].valueCodeableConcept = https://standards.digital.health.nz/ns/nz-residency-status#Y "Yes"

* extension[current-occupation].valueCodeableConcept.coding.display = "Carpenter"
* extension[patient-iwi].valueCodeableConcept = $iwi-cs#01112 "Te Rarawa"
* extension[gender-identity].valueCodeableConcept =  http://hl7.org/fhir/gender-identity#male
* extension[interpreter-required].valueBoolean = true

* extension[domicile-code].valueCodeableConcept.coding.code = #0040
* extension[domicile-code].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/ns/domicileCode"
* extension[domicile-code].valueCodeableConcept.coding.display = "Waipu"

//the current NHI
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "WER4568"

//the dormant NHI
* identifier[1].use = #old
* identifier[1].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[1].value = "ABC1234"

* name.family = "Doe"
* name.given = "John"
* name.given[1] = "Albertus"
* name.extension[preferred].valueBoolean = true

* deceasedBoolean = false
* gender = #male
* birthDate = "1989-12-12"

//email address & phone
* telecom.system = #email
* telecom.use = #home
* telecom.rank = 1
* telecom.period.start = "2020-01-01"
* telecom.value = "johndoe@erewhon.com"
* telecom.extension[authorized-by-patient].valueBoolean = true
* telecom.extension[validated-by-patient].valueBoolean = true

* telecom[1].system = #phone
* telecom[1].value = "+64 9 000 0000"


* telecom[2].system = #other
* telecom[2].value = "myZoomAcccount"
* telecom[2].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/contactpoint-other"

* telecom[2].extension.valueCoding.system = "https://standards.digital.health.nz/ns/contact-point-other-code"
* telecom[2].extension.valueCoding.code = #videoconference
//physical address

* address.extension[building-name].valueString = "The Black building"
* address.extension[suburb].valueString = "Waipu river"

* address.extension[authorized-by-patient].valueBoolean = true
* address.extension[validated-by-patient].valueBoolean = true




* address.line = "23 Thule St"
* address.city = "Waipu"
* address.district = "Northland"
* address.postalCode = "0510"
* address.country = "New Zealand"

//The Managing organization describes the DHB that supplied this record. This will always be an external resource.
* managingOrganization = Reference(cmdhb)   //DHB is Counties Manukau
* managingOrganization.display = "Counties-Manukau DHB"

* generalPractitioner = Reference(gp-pracrole1)       //the GP
* generalPractitioner.display = "Dr Marcus Welby"


/*
* generalPractitioner[1] = Reference(gp-org1)       //the GP Practice
* generalPractitioner[1].display = "Good Health Medical Centre"
* generalPractitioner[1].extension[gp-practice-enrollment-date].valueDate = "2020-01-01"
*/

* communication.language.coding.system = "urn:ietf:bcp:47"
* communication.language.coding.code = #fr
* communication.language.coding.display = "French" 


//* contact.relationship.coding.
* contact.relationship.coding  = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.text = "Mr John Watson"

* contact.telecom.system = #phone
* contact.telecom.value = "+64 9 000 0001"

* contact.address.line = "23 Thule St"
* address.city = "Waipu"

* contact.gender = #male






Instance:   gp-pracrole1
InstanceOf: PractitionerRole
//BaseType: PractitionerRole
Description: "The PractitionerRole for the GP"
Usage: #example

* practitioner = Reference(prac1)
* organization = Reference(ghmc)


Instance:   prac1
InstanceOf: Practitioner
//BaseType: Practitioner
Description: "The Practitioner representing for the GP"
Usage: #example


Instance:   ghmc
InstanceOf: Organization
//BaseType: Organization
Description: "The GP practice"
Usage: #example

* name = "Good health Medical Centre"

Instance:   cmdhb
InstanceOf: Organization
//BaseType: Organization
Description: "Counties Manukau Organization"
Usage: #example

* name = "Counties Manukau DHB"