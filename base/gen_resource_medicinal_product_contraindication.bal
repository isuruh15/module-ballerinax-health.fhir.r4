// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.


public const string PROFILE_BASE_MEDICINALPRODUCTCONTRAINDICATION = "http://hl7.org/fhir/StructureDefinition/MedicinalProductContraindication";
public const RESOURCE_NAME_MEDICINALPRODUCTCONTRAINDICATION = "MedicinalProductContraindication";

# FHIR MedicinalProductContraindication resource record.
#
# + resourceType - The type of the resource describes
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + disease - The disease, symptom or procedure for the contraindication.
# + subject - The medication for which this is an indication.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + therapeuticIndication - Information about the use of the medicinal product in relation to other therapies as part of the indication.
# + population - The population group to which this applies.
# + diseaseStatus - The status of the disease or symptom for the contraindication.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + otherTherapy - Information about the use of the medicinal product in relation to other therapies described as part of the indication.
# + comorbidity - A comorbidity (concurrent condition) or coinfection.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
@ResourceDefinition {
    resourceType: "MedicinalProductContraindication",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/MedicinalProductContraindication",
    elements: {
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductContraindication.extension"
        },
        "disease" : {
            name: "disease",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductContraindication.disease"
        },
        "subject" : {
            name: "subject",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductContraindication.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductContraindication.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductContraindication.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "therapeuticIndication" : {
            name: "therapeuticIndication",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductContraindication.therapeuticIndication"
        },
        "population" : {
            name: "population",
            dataType: Population,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductContraindication.population"
        },
        "diseaseStatus" : {
            name: "diseaseStatus",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductContraindication.diseaseStatus"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductContraindication.contained"
        },
        "otherTherapy" : {
            name: "otherTherapy",
            dataType: MedicinalProductContraindicationOtherTherapy,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductContraindication.otherTherapy"
        },
        "comorbidity" : {
            name: "comorbidity",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductContraindication.comorbidity"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductContraindication.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductContraindication.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductContraindication.id"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductContraindication.text"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type MedicinalProductContraindication record {|
    *DomainResource;

    RESOURCE_NAME_MEDICINALPRODUCTCONTRAINDICATION resourceType = RESOURCE_NAME_MEDICINALPRODUCTCONTRAINDICATION;

    BaseMedicinalProductContraindicationMeta meta = {
        profile : [PROFILE_BASE_MEDICINALPRODUCTCONTRAINDICATION]
    };
    Extension[] extension?;
    CodeableConcept disease?;
    Reference[] subject?;
    Extension[] modifierExtension?;
    code language?;
    Reference[] therapeuticIndication?;
    Population[] population?;
    CodeableConcept diseaseStatus?;
    Resource[] contained?;
    MedicinalProductContraindicationOtherTherapy[] otherTherapy?;
    CodeableConcept[] comorbidity?;
    uri implicitRules?;
    string id?;
    Narrative text?;
|};

@DataTypeDefinition {
    name: "BaseMedicinalProductContraindicationMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseMedicinalProductContraindicationMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/MedicinalProductContraindication"];
    Coding[] security?;
    Coding[] tag?;
|};

# FHIR MedicinalProductContraindicationOtherTherapy datatype record.
#
# + medicationReference - Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + therapyRelationshipType - The type of relationship between the medicinal product indication or contraindication and another therapy.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + medicationCodeableConcept - Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.
@DataTypeDefinition {
    name: "MedicinalProductContraindicationOtherTherapy",
    baseType: (),
    elements: {
        "medicationReference": {
            name: "medicationReference",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.",
            path: "MedicinalProductContraindication.otherTherapy.medication[x]"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "MedicinalProductContraindication.otherTherapy.extension"
        },
        "therapyRelationshipType": {
            name: "therapyRelationshipType",
            dataType: CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "The type of relationship between the medicinal product indication or contraindication and another therapy.",
            path: "MedicinalProductContraindication.otherTherapy.therapyRelationshipType"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "MedicinalProductContraindication.otherTherapy.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "MedicinalProductContraindication.otherTherapy.id"
        },
        "medicationCodeableConcept": {
            name: "medicationCodeableConcept",
            dataType: CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.",
            path: "MedicinalProductContraindication.otherTherapy.medication[x]"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type MedicinalProductContraindicationOtherTherapy record {|
    Reference medicationReference;
    Extension[] extension?;
    CodeableConcept therapyRelationshipType;
    Extension[] modifierExtension?;
    string id?;
    CodeableConcept medicationCodeableConcept;
|};

