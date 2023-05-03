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

import ballerina/constraint;

public const string PROFILE_BASE_ALLERGYINTOLERANCE = "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance";
public const RESOURCE_NAME_ALLERGYINTOLERANCE = "AllergyIntolerance";

# FHIR AllergyIntolerance resource record.
#
# + resourceType - The type of the resource describes
# + note - Additional narrative about the propensity for the Adverse Reaction, not captured in other fields.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - Code for an allergy or intolerance statement (either a positive or a negated/excluded statement). This may be a code for a substance or pharmaceutical product that is considered to be responsible for the adverse reaction risk (e.g., 'Latex'), an allergy or intolerance condition (e.g., 'Latex allergy'), or a negated/excluded code for a specific substance or class (e.g., 'No latex allergy') or a general or categorical negated statement (e.g., 'No known allergy', 'No known drug allergies'). Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'. If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, then the receiving system should ignore AllergyIntolerance.reaction.substance.
# + onsetRange - Estimated or actual date, date-time, or age when allergy or intolerance was identified.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + criticality - Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance.
# + language - The base language in which the resource is written.
# + clinicalStatus - The clinical status of the allergy or intolerance.
# + onsetDateTime - Estimated or actual date, date-time, or age when allergy or intolerance was identified.
# + 'type - Identification of the underlying physiological mechanism for the reaction risk.
# + onsetString - Estimated or actual date, date-time, or age when allergy or intolerance was identified.
# + onsetAge - Estimated or actual date, date-time, or age when allergy or intolerance was identified.
# + lastOccurrence - Represents the date and/or time of the last known occurrence of a reaction event.
# + patient - The patient who has the allergy or intolerance.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + identifier - Business identifiers assigned to this AllergyIntolerance by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
# + recorder - Individual who recorded the record and takes responsibility for its content.
# + onsetPeriod - Estimated or actual date, date-time, or age when allergy or intolerance was identified.
# + reaction - Details about each adverse reaction event linked to exposure to the identified substance.
# + verificationStatus - Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified substance (including pharmaceutical product).
# + recordedDate - The recordedDate represents when this particular AllergyIntolerance record was created in the system, which is often a system-generated date.
# + encounter - The encounter when the allergy or intolerance was asserted.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + asserter - The source of the information about the allergy that is recorded.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + category - Category of the identified substance.
@ResourceDefinition {
    resourceType: "AllergyIntolerance",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
    elements: {
        "note" : {
            name: "note",
            dataType: Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AllergyIntolerance.note"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AllergyIntolerance.extension"
        },
        "code" : {
            name: "code",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.code",
            valueSet: "http://hl7.org/fhir/ValueSet/allergyintolerance-code"
        },
        "onsetRange" : {
            name: "onsetRange",
            dataType: Range,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.onset[x]"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AllergyIntolerance.modifierExtension"
        },
        "criticality" : {
            name: "criticality",
            dataType: AllergyIntoleranceCriticality,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.criticality",
            valueSet: "http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality|4.0.1"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "clinicalStatus" : {
            name: "clinicalStatus",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.clinicalStatus",
            valueSet: "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical|4.0.1"
        },
        "onsetDateTime" : {
            name: "onsetDateTime",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.onset[x]"
        },
        "type" : {
            name: "type",
            dataType: AllergyIntoleranceType,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.type",
            valueSet: "http://hl7.org/fhir/ValueSet/allergy-intolerance-type|4.0.1"
        },
        "onsetString" : {
            name: "onsetString",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.onset[x]"
        },
        "onsetAge" : {
            name: "onsetAge",
            dataType: Age,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.onset[x]"
        },
        "lastOccurrence" : {
            name: "lastOccurrence",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.lastOccurrence"
        },
        "patient" : {
            name: "patient",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.patient"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.id"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.text"
        },
        "identifier" : {
            name: "identifier",
            dataType: Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AllergyIntolerance.identifier"
        },
        "recorder" : {
            name: "recorder",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.recorder"
        },
        "onsetPeriod" : {
            name: "onsetPeriod",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.onset[x]"
        },
        "reaction" : {
            name: "reaction",
            dataType: AllergyIntoleranceReaction,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AllergyIntolerance.reaction"
        },
        "verificationStatus" : {
            name: "verificationStatus",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.verificationStatus",
            valueSet: "http://hl7.org/fhir/ValueSet/allergyintolerance-verification|4.0.1"
        },
        "recordedDate" : {
            name: "recordedDate",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.recordedDate"
        },
        "encounter" : {
            name: "encounter",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.encounter"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AllergyIntolerance.contained"
        },
        "asserter" : {
            name: "asserter",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.asserter"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "AllergyIntolerance.implicitRules"
        },
        "category" : {
            name: "category",
            dataType: AllergyIntoleranceCategory,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AllergyIntolerance.category",
            valueSet: "http://hl7.org/fhir/ValueSet/allergy-intolerance-category|4.0.1"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type AllergyIntolerance record {|
    *DomainResource;

    RESOURCE_NAME_ALLERGYINTOLERANCE resourceType = RESOURCE_NAME_ALLERGYINTOLERANCE;

    BaseAllergyIntoleranceMeta meta = {
        profile : [PROFILE_BASE_ALLERGYINTOLERANCE]
    };
    Annotation[] note?;
    Extension[] extension?;
    CodeableConcept code?;
    Range onsetRange?;
    Extension[] modifierExtension?;
    AllergyIntoleranceCriticality criticality?;
    code language?;
    CodeableConcept clinicalStatus?;
    dateTime onsetDateTime?;
    AllergyIntoleranceType 'type?;
    string onsetString?;
    Age onsetAge?;
    dateTime lastOccurrence?;
    Reference patient;
    string id?;
    Narrative text?;
    Identifier[] identifier?;
    Reference recorder?;
    Period onsetPeriod?;
    AllergyIntoleranceReaction[] reaction?;
    CodeableConcept verificationStatus?;
    dateTime recordedDate?;
    Reference encounter?;
    Resource[] contained?;
    Reference asserter?;
    uri implicitRules?;
    AllergyIntoleranceCategory[] category?;
|};

@DataTypeDefinition {
    name: "BaseAllergyIntoleranceMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseAllergyIntoleranceMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/AllergyIntolerance"];
    Coding[] security?;
    Coding[] tag?;
|};

# AllergyIntoleranceCriticality enum
public enum AllergyIntoleranceCriticality {
   CODE_CRITICALITY_HIGH = "high",
   CODE_CRITICALITY_LOW = "low",
   CODE_CRITICALITY_UNABLE_TO_ASSESS = "unable-to-assess"
}

# FHIR AllergyIntoleranceReaction datatype record.
#
# + severity - Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations.
# + note - Additional text about the adverse reaction event not captured in other fields.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + manifestation - Clinical symptoms and/or signs that are observed or associated with the adverse reaction event.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + substance - Identification of the specific substance (or pharmaceutical product) considered to be responsible for the Adverse Reaction event. Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'. If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, then the receiving system should ignore AllergyIntolerance.reaction.substance.
# + description - Text description about the reaction as a whole, including details of the manifestation if required.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + onset - Record of the date and/or time of the onset of the Reaction.
# + exposureRoute - Identification of the route by which the subject was exposed to the substance.
@DataTypeDefinition {
    name: "AllergyIntoleranceReaction",
    baseType: (),
    elements: {
        "severity": {
            name: "severity",
            dataType: AllergyIntoleranceReactionSeverity,
            min: 0,
            max: 1,
            isArray: false,
            description: "Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations.",
            path: "AllergyIntolerance.reaction.severity"
        },
        "note": {
            name: "note",
            dataType: Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Additional text about the adverse reaction event not captured in other fields.",
            path: "AllergyIntolerance.reaction.note"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "AllergyIntolerance.reaction.extension"
        },
        "manifestation": {
            name: "manifestation",
            dataType: CodeableConcept,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Clinical symptoms and/or signs that are observed or associated with the adverse reaction event.",
            path: "AllergyIntolerance.reaction.manifestation"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "AllergyIntolerance.reaction.modifierExtension"
        },
        "substance": {
            name: "substance",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identification of the specific substance (or pharmaceutical product) considered to be responsible for the Adverse Reaction event. Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'. If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, then the receiving system should ignore AllergyIntolerance.reaction.substance.",
            path: "AllergyIntolerance.reaction.substance"
        },
        "description": {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Text description about the reaction as a whole, including details of the manifestation if required.",
            path: "AllergyIntolerance.reaction.description"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "AllergyIntolerance.reaction.id"
        },
        "onset": {
            name: "onset",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            description: "Record of the date and/or time of the onset of the Reaction.",
            path: "AllergyIntolerance.reaction.onset"
        },
        "exposureRoute": {
            name: "exposureRoute",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identification of the route by which the subject was exposed to the substance.",
            path: "AllergyIntolerance.reaction.exposureRoute"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type AllergyIntoleranceReaction record {|
    AllergyIntoleranceReactionSeverity severity?;
    Annotation[] note?;
    Extension[] extension?;
    @constraint:Array {
       minLength: 1
    }
    CodeableConcept[] manifestation;
    Extension[] modifierExtension?;
    CodeableConcept substance?;
    string description?;
    string id?;
    dateTime onset?;
    CodeableConcept exposureRoute?;
|};

# AllergyIntoleranceType enum
public enum AllergyIntoleranceType {
   CODE_TYPE_INTOLERANCE = "intolerance",
   CODE_TYPE_ALLERGY = "allergy"
}

# AllergyIntoleranceCategory enum
public enum AllergyIntoleranceCategory {
   CODE_CATEGORY_ENVIRONMENT = "environment",
   CODE_CATEGORY_BIOLOGIC = "biologic",
   CODE_CATEGORY_MEDICATION = "medication",
   CODE_CATEGORY_FOOD = "food"
}

# AllergyIntoleranceReactionSeverity enum
public enum AllergyIntoleranceReactionSeverity {
   CODE_SEVERITY_MILD = "mild",
   CODE_SEVERITY_SEVERE = "severe",
   CODE_SEVERITY_MODERATE = "moderate"
}

