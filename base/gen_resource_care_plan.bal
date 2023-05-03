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


public const string PROFILE_BASE_CAREPLAN = "http://hl7.org/fhir/StructureDefinition/CarePlan";
public const RESOURCE_NAME_CAREPLAN = "CarePlan";

# FHIR CarePlan resource record.
#
# + resourceType - The type of the resource describes
# + note - General notes about the care plan not covered elsewhere.
# + partOf - A larger care plan of which this particular care plan is a component or step.
# + addresses - Identifies the conditions/problems/concerns/diagnoses/etc. whose management and/or mitigation are handled by this plan.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + activity - Identifies a planned action to occur as part of the plan. For example, a medication to be used, lab tests to perform, self-monitoring, education, etc.
# + subject - Identifies the patient or group whose intended care is described by the plan.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - A description of the scope and nature of the plan.
# + language - The base language in which the resource is written.
# + title - Human-friendly name for the care plan.
# + instantiatesUri - The URL pointing to an externally maintained protocol, guideline, questionnaire or other definition that is adhered to in whole or in part by this CarePlan.
# + contributor - Identifies the individual(s) or organization who provided the contents of the care plan.
# + supportingInfo - Identifies portions of the patient's record that specifically influenced the formation of the plan. These might include comorbidities, recent procedures, limitations, recent assessments, etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + basedOn - A care plan that is fulfilled in whole or in part by this care plan.
# + careTeam - Identifies all people and organizations who are expected to be involved in the care envisioned by this plan.
# + identifier - Business identifiers assigned to this care plan by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
# + period - Indicates when the plan did (or is intended to) come into effect and end.
# + goal - Describes the intended objective(s) of carrying out the care plan.
# + author - When populated, the author is responsible for the care plan. The care plan is attributed to the author.
# + created - Represents when this particular CarePlan record was created in the system, which is often a system-generated date.
# + replaces - Completed or terminated care plan whose function is taken by this new care plan.
# + encounter - The Encounter during which this CarePlan was created or to which the creation of this record is tightly associated.
# + instantiatesCanonical - The URL pointing to a FHIR-defined protocol, guideline, questionnaire or other definition that is adhered to in whole or in part by this CarePlan.
# + intent - Indicates the level of authority/intentionality associated with the care plan and where the care plan fits into the workflow chain.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + category - Identifies what 'kind' of plan this is to support differentiation between multiple co-existing plans; e.g. 'Home health', 'psychiatric', 'asthma', 'disease management', 'wellness plan', etc.
# + status - Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical record.
@ResourceDefinition {
    resourceType: "CarePlan",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/CarePlan",
    elements: {
        "note" : {
            name: "note",
            dataType: Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.note"
        },
        "partOf" : {
            name: "partOf",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.partOf"
        },
        "addresses" : {
            name: "addresses",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.addresses"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.extension"
        },
        "activity" : {
            name: "activity",
            dataType: CarePlanActivity,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.activity"
        },
        "subject" : {
            name: "subject",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "CarePlan.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.modifierExtension"
        },
        "description" : {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.description"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "title" : {
            name: "title",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.title"
        },
        "instantiatesUri" : {
            name: "instantiatesUri",
            dataType: uri,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.instantiatesUri"
        },
        "contributor" : {
            name: "contributor",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.contributor"
        },
        "supportingInfo" : {
            name: "supportingInfo",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.supportingInfo"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.id"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.text"
        },
        "basedOn" : {
            name: "basedOn",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.basedOn"
        },
        "careTeam" : {
            name: "careTeam",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.careTeam"
        },
        "identifier" : {
            name: "identifier",
            dataType: Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.identifier"
        },
        "period" : {
            name: "period",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.period"
        },
        "goal" : {
            name: "goal",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.goal"
        },
        "author" : {
            name: "author",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.author"
        },
        "created" : {
            name: "created",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.created"
        },
        "replaces" : {
            name: "replaces",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.replaces"
        },
        "encounter" : {
            name: "encounter",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.encounter"
        },
        "instantiatesCanonical" : {
            name: "instantiatesCanonical",
            dataType: canonical,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.instantiatesCanonical"
        },
        "intent" : {
            name: "intent",
            dataType: CarePlanIntent,
            min: 1,
            max: 1,
            isArray: false,
            path: "CarePlan.intent",
            valueSet: "http://hl7.org/fhir/ValueSet/care-plan-intent|4.0.1"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.contained"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "CarePlan.implicitRules"
        },
        "category" : {
            name: "category",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CarePlan.category",
            valueSet: "http://hl7.org/fhir/ValueSet/care-plan-category"
        },
        "status" : {
            name: "status",
            dataType: CarePlanStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "CarePlan.status",
            valueSet: "http://hl7.org/fhir/ValueSet/request-status|4.0.1"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type CarePlan record {|
    *DomainResource;

    RESOURCE_NAME_CAREPLAN resourceType = RESOURCE_NAME_CAREPLAN;

    BaseCarePlanMeta meta = {
        profile : [PROFILE_BASE_CAREPLAN]
    };
    Annotation[] note?;
    Reference[] partOf?;
    Reference[] addresses?;
    Extension[] extension?;
    CarePlanActivity[] activity?;
    Reference subject;
    Extension[] modifierExtension?;
    string description?;
    code language?;
    string title?;
    uri[] instantiatesUri?;
    Reference[] contributor?;
    Reference[] supportingInfo?;
    string id?;
    Narrative text?;
    Reference[] basedOn?;
    Reference[] careTeam?;
    Identifier[] identifier?;
    Period period?;
    Reference[] goal?;
    Reference author?;
    dateTime created?;
    Reference[] replaces?;
    Reference encounter?;
    canonical[] instantiatesCanonical?;
    CarePlanIntent intent;
    Resource[] contained?;
    uri implicitRules?;
    CodeableConcept[] category?;
    CarePlanStatus status;
|};

@DataTypeDefinition {
    name: "BaseCarePlanMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseCarePlanMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/CarePlan"];
    Coding[] security?;
    Coding[] tag?;
|};

# FHIR CarePlanActivityDetail datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - Detailed description of the type of planned activity; e.g. what lab test, what procedure, what kind of encounter.
# + goal - Internal reference that identifies the goals that this activity is intended to contribute towards meeting.
# + performer - Identifies who's expected to be involved in the activity.
# + quantity - Identifies the quantity expected to be supplied, administered or consumed by the subject.
# + kind - A description of the kind of resource the in-line definition of a care plan activity is representing. The CarePlan.activity.detail is an in-line definition when a resource is not referenced using CarePlan.activity.reference. For example, a MedicationRequest, a ServiceRequest, or a CommunicationRequest.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - This provides a textual description of constraints on the intended activity occurrence, including relation to other activities. It may also include objectives, pre-conditions and end-conditions. Finally, it may convey specifics about the activity such as body site, method, route, etc.
# + productReference - Identifies the food, drug or other product to be consumed or supplied in the activity.
# + reasonReference - Indicates another resource, such as the health condition(s), whose existence justifies this request and drove the inclusion of this particular activity as part of the plan.
# + instantiatesCanonical - The URL pointing to a FHIR-defined protocol, guideline, questionnaire or other definition that is adhered to in whole or in part by this CarePlan activity.
# + instantiatesUri - The URL pointing to an externally maintained protocol, guideline, questionnaire or other definition that is adhered to in whole or in part by this CarePlan activity.
# + scheduledString - The period, timing or frequency upon which the described activity is to occur.
# + statusReason - Provides reason why the activity isn't yet started, is on hold, was cancelled, etc.
# + scheduledTiming - The period, timing or frequency upon which the described activity is to occur.
# + scheduledPeriod - The period, timing or frequency upon which the described activity is to occur.
# + dailyAmount - Identifies the quantity expected to be consumed in a given day.
# + location - Identifies the facility where the activity will occur; e.g. home, hospital, specific clinic, etc.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + reasonCode - Provides the rationale that drove the inclusion of this particular activity as part of the plan or the reason why the activity was prohibited.
# + doNotPerform - If true, indicates that the described activity is one that must NOT be engaged in when following the plan. If false, or missing, indicates that the described activity is one that should be engaged in when following the plan.
# + productCodeableConcept - Identifies the food, drug or other product to be consumed or supplied in the activity.
# + status - Identifies what progress is being made for the specific activity.
@DataTypeDefinition {
    name: "CarePlanActivityDetail",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "CarePlan.activity.detail.extension"
        },
        "code": {
            name: "code",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Detailed description of the type of planned activity; e.g. what lab test, what procedure, what kind of encounter.",
            path: "CarePlan.activity.detail.code"
        },
        "goal": {
            name: "goal",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Internal reference that identifies the goals that this activity is intended to contribute towards meeting.",
            path: "CarePlan.activity.detail.goal"
        },
        "performer": {
            name: "performer",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Identifies who's expected to be involved in the activity.",
            path: "CarePlan.activity.detail.performer"
        },
        "quantity": {
            name: "quantity",
            dataType: Quantity,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identifies the quantity expected to be supplied, administered or consumed by the subject.",
            path: "CarePlan.activity.detail.quantity"
        },
        "kind": {
            name: "kind",
            dataType: CarePlanActivityDetailKind,
            min: 0,
            max: 1,
            isArray: false,
            description: "A description of the kind of resource the in-line definition of a care plan activity is representing. The CarePlan.activity.detail is an in-line definition when a resource is not referenced using CarePlan.activity.reference. For example, a MedicationRequest, a ServiceRequest, or a CommunicationRequest.",
            path: "CarePlan.activity.detail.kind"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "CarePlan.activity.detail.modifierExtension"
        },
        "description": {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "This provides a textual description of constraints on the intended activity occurrence, including relation to other activities. It may also include objectives, pre-conditions and end-conditions. Finally, it may convey specifics about the activity such as body site, method, route, etc.",
            path: "CarePlan.activity.detail.description"
        },
        "productReference": {
            name: "productReference",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identifies the food, drug or other product to be consumed or supplied in the activity.",
            path: "CarePlan.activity.detail.product[x]"
        },
        "reasonReference": {
            name: "reasonReference",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Indicates another resource, such as the health condition(s), whose existence justifies this request and drove the inclusion of this particular activity as part of the plan.",
            path: "CarePlan.activity.detail.reasonReference"
        },
        "instantiatesCanonical": {
            name: "instantiatesCanonical",
            dataType: canonical,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The URL pointing to a FHIR-defined protocol, guideline, questionnaire or other definition that is adhered to in whole or in part by this CarePlan activity.",
            path: "CarePlan.activity.detail.instantiatesCanonical"
        },
        "instantiatesUri": {
            name: "instantiatesUri",
            dataType: uri,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The URL pointing to an externally maintained protocol, guideline, questionnaire or other definition that is adhered to in whole or in part by this CarePlan activity.",
            path: "CarePlan.activity.detail.instantiatesUri"
        },
        "scheduledString": {
            name: "scheduledString",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "The period, timing or frequency upon which the described activity is to occur.",
            path: "CarePlan.activity.detail.scheduled[x]"
        },
        "statusReason": {
            name: "statusReason",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Provides reason why the activity isn't yet started, is on hold, was cancelled, etc.",
            path: "CarePlan.activity.detail.statusReason"
        },
        "scheduledTiming": {
            name: "scheduledTiming",
            dataType: Timing,
            min: 0,
            max: 1,
            isArray: false,
            description: "The period, timing or frequency upon which the described activity is to occur.",
            path: "CarePlan.activity.detail.scheduled[x]"
        },
        "scheduledPeriod": {
            name: "scheduledPeriod",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "The period, timing or frequency upon which the described activity is to occur.",
            path: "CarePlan.activity.detail.scheduled[x]"
        },
        "dailyAmount": {
            name: "dailyAmount",
            dataType: Quantity,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identifies the quantity expected to be consumed in a given day.",
            path: "CarePlan.activity.detail.dailyAmount"
        },
        "location": {
            name: "location",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identifies the facility where the activity will occur; e.g. home, hospital, specific clinic, etc.",
            path: "CarePlan.activity.detail.location"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "CarePlan.activity.detail.id"
        },
        "reasonCode": {
            name: "reasonCode",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Provides the rationale that drove the inclusion of this particular activity as part of the plan or the reason why the activity was prohibited.",
            path: "CarePlan.activity.detail.reasonCode"
        },
        "doNotPerform": {
            name: "doNotPerform",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            description: "If true, indicates that the described activity is one that must NOT be engaged in when following the plan. If false, or missing, indicates that the described activity is one that should be engaged in when following the plan.",
            path: "CarePlan.activity.detail.doNotPerform"
        },
        "productCodeableConcept": {
            name: "productCodeableConcept",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identifies the food, drug or other product to be consumed or supplied in the activity.",
            path: "CarePlan.activity.detail.product[x]"
        },
        "status": {
            name: "status",
            dataType: CarePlanActivityDetailStatus,
            min: 1,
            max: 1,
            isArray: false,
            description: "Identifies what progress is being made for the specific activity.",
            path: "CarePlan.activity.detail.status"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type CarePlanActivityDetail record {|
    Extension[] extension?;
    CodeableConcept code?;
    Reference[] goal?;
    Reference[] performer?;
    Quantity quantity?;
    CarePlanActivityDetailKind kind?;
    Extension[] modifierExtension?;
    string description?;
    Reference productReference?;
    Reference[] reasonReference?;
    canonical[] instantiatesCanonical?;
    uri[] instantiatesUri?;
    string scheduledString?;
    CodeableConcept statusReason?;
    Timing scheduledTiming?;
    Period scheduledPeriod?;
    Quantity dailyAmount?;
    Reference location?;
    string id?;
    CodeableConcept[] reasonCode?;
    boolean doNotPerform?;
    CodeableConcept productCodeableConcept?;
    CarePlanActivityDetailStatus status;
|};

# CarePlanActivityDetailStatus enum
public enum CarePlanActivityDetailStatus {
   CODE_STATUS_STOPPED = "stopped",
   CODE_STATUS_SCHEDULED = "scheduled",
   CODE_STATUS_NOT_STARTED = "not-started",
   CODE_STATUS_CANCELLED = "cancelled",
   CODE_STATUS_COMPLETED = "completed",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_IN_PROGRESS = "in-progress",
   CODE_STATUS_ON_HOLD = "on-hold",
   CODE_STATUS_UNKNOWN = "unknown"
}

# CarePlanStatus enum
public enum CarePlanStatus {
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_COMPLETED = "completed",
   CODE_STATUS_REVOKED = "revoked",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_ON_HOLD = "on-hold",
   CODE_STATUS_UNKNOWN = "unknown"
}

# CarePlanActivityDetailKind enum
public enum CarePlanActivityDetailKind {
   CODE_KIND_APPOINTMENT = "Appointment",
   CODE_KIND_MEDICATIONREQUEST = "MedicationRequest",
   CODE_KIND_TASK = "Task",
   CODE_KIND_NUTRITIONORDER = "NutritionOrder",
   CODE_KIND_VISIONPRESCRIPTION = "VisionPrescription",
   CODE_KIND_DEVICEREQUEST = "DeviceRequest",
   CODE_KIND_SERVICEREQUEST = "ServiceRequest",
   CODE_KIND_COMMUNICATIONREQUEST = "CommunicationRequest"
}

# CarePlanIntent enum
public enum CarePlanIntent {
   CODE_INTENT_PROPOSAL = "proposal",
   CODE_INTENT_PLAN = "plan",
   CODE_INTENT_ORDER = "order",
   CODE_INTENT_OPTION = "option"
}

# FHIR CarePlanActivity datatype record.
#
# + reference - The details of the proposed activity represented in a specific resource.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + outcomeCodeableConcept - Identifies the outcome at the point when the status of the activity is assessed. For example, the outcome of an education activity could be patient understands (or not).
# + outcomeReference - Details of the outcome or action resulting from the activity. The reference to an 'event' resource, such as Procedure or Encounter or Observation, is the result/outcome of the activity itself. The activity can be conveyed using CarePlan.activity.detail OR using the CarePlan.activity.reference (a reference to a “request” resource).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + progress - Notes about the adherence/status/progress of the activity.
# + detail - A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know about specific resources such as procedure etc.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@DataTypeDefinition {
    name: "CarePlanActivity",
    baseType: (),
    elements: {
        "reference": {
            name: "reference",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "The details of the proposed activity represented in a specific resource.",
            path: "CarePlan.activity.reference"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "CarePlan.activity.extension"
        },
        "outcomeCodeableConcept": {
            name: "outcomeCodeableConcept",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Identifies the outcome at the point when the status of the activity is assessed. For example, the outcome of an education activity could be patient understands (or not).",
            path: "CarePlan.activity.outcomeCodeableConcept"
        },
        "outcomeReference": {
            name: "outcomeReference",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Details of the outcome or action resulting from the activity. The reference to an 'event' resource, such as Procedure or Encounter or Observation, is the result/outcome of the activity itself. The activity can be conveyed using CarePlan.activity.detail OR using the CarePlan.activity.reference (a reference to a “request” resource).",
            path: "CarePlan.activity.outcomeReference"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "CarePlan.activity.modifierExtension"
        },
        "progress": {
            name: "progress",
            dataType: Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Notes about the adherence/status/progress of the activity.",
            path: "CarePlan.activity.progress"
        },
        "detail": {
            name: "detail",
            dataType: CarePlanActivityDetail,
            min: 0,
            max: 1,
            isArray: false,
            description: "A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know about specific resources such as procedure etc.",
            path: "CarePlan.activity.detail"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "CarePlan.activity.id"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type CarePlanActivity record {|
    Reference reference?;
    Extension[] extension?;
    CodeableConcept[] outcomeCodeableConcept?;
    Reference[] outcomeReference?;
    Extension[] modifierExtension?;
    Annotation[] progress?;
    CarePlanActivityDetail detail?;
    string id?;
|};

