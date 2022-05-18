Profile:        NorthernRegionPractitioner
Parent:         Practitioner
Title:          "Northern region Practitioner profile"
Description:    "Represents Practitioner data exposed by northern region DHBs."


* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NrPractitioner"
* ^version = "0.2.0"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Northern Region Practitioner profile</div>"
* ^text.status = #additional

//top level  extensions
* extension contains 
    $nzEthnicity named nzEthnicity 0..6

* telecom.extension contains
    $edi-address named edi-address 0..1



//must be one name with a family name
//todo - should we really insist on a family name? May not always be known...
* name 1..* MS
//* name.family 1..1 MS

//slice identifier to add the HPI as Must Support
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"

* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.description = "The identifiers"
* identifier ^slicing.rules = #open
* identifier contains 
    HPI 0..1 MS 

* identifier[HPI].system = "https://standards.digital.health.nz/ns/hpi-person-id" (exactly)
* identifier[HPI].use = #official (exactly)
* identifier[HPI].type 0..0
* identifier[HPI] ^short = "The currently active CPN (Common Person Name)"
* identifier[HPI] ^definition = "The HPI Person Identifier or CPN of the person that is currently in use.   It can be referred to as the ‘Live’ CPN or “live” HPI Person ID”. A person can only have one live CPN"
