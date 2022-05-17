Extension: BirthPlace
Id: birth-place
Description: "Place of birth"

* ^url = $birthPlace
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Practitioner.qualification"

* extension contains
    country 0..1 and
    place-of-birth 0..1 and
    source 0..1

* ^status = #active

// definitions of sub-extensions
* extension[country].url = "country" (exactly)
* extension[country] ^definition = "Counrty of Birth"
* extension[country].value[x] only CodeableConcept

* extension[place-of-birth].url = "place-of-birth" (exactly)
* extension[place-of-birth] ^definition = "The period the conditions on practice are effective"
* extension[place-of-birth].value[x] only string

* extension[source].url = "source" (exactly)
* extension[source] ^definition = "The source of information"
* extension[source] ^short = "The source of information"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from $information-source-vs (preferred)
