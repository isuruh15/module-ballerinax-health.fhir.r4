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


public const string PROFILE_BASE_GOAL = "http://hl7.org/fhir/StructureDefinition/Goal";
public const RESOURCE_NAME_GOAL = "Goal";

# FHIR Goal resource record.
#
# + resourceType - The type of the resource describes
# + statusDate - Identifies when the current status. I.e. When initially created, when achieved, when cancelled, etc.
# + note - Any comments related to the goal.
# + addresses - The identified conditions and other health record elements that are intended to be addressed by the goal.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + lifecycleStatus - The state of the goal throughout its lifecycle.
# + outcomeReference - Details of what's changed (or not changed).
# + subject - Identifies the patient, group or organization for whom the goal is being established.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - Human-readable and/or coded description of a specific desired objective of care, such as 'control blood pressure' or 'negotiate an obstacle course' or 'dance with child at wedding'.
# + language - The base language in which the resource is written.
# + outcomeCode - Identifies the change (or lack of change) at the point when the status of the goal is assessed.
# + statusReason - Captures the reason for the current status.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + identifier - Business identifiers assigned to this goal by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
# + priority - Identifies the mutually agreed level of importance associated with reaching/sustaining the goal.
# + target - Indicates what should be done by when.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + expressedBy - Indicates whose goal this is - patient goal, practitioner goal, etc.
# + startCodeableConcept - The date or event after which the goal should begin being pursued.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + achievementStatus - Describes the progression, or lack thereof, towards the goal against the target.
# + category - Indicates a category the goal falls within.
# + startDate - The date or event after which the goal should begin being pursued.
@ResourceDefinition {
    resourceType: "Goal",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Goal",
    elements: {
        "statusDate" : {
            name: "statusDate",
            dataType: date,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.statusDate"
        },
        "note" : {
            name: "note",
            dataType: Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Goal.note"
        },
        "addresses" : {
            name: "addresses",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Goal.addresses"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Goal.extension"
        },
        "lifecycleStatus" : {
            name: "lifecycleStatus",
            dataType: GoalLifecycleStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Goal.lifecycleStatus",
            valueSet: "http://hl7.org/fhir/ValueSet/goal-status|4.0.1"
        },
        "outcomeReference" : {
            name: "outcomeReference",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Goal.outcomeReference"
        },
        "subject" : {
            name: "subject",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "Goal.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Goal.modifierExtension"
        },
        "description" : {
            name: "description",
            dataType: CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            path: "Goal.description",
            valueSet: "http://hl7.org/fhir/ValueSet/clinical-findings"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "outcomeCode" : {
            name: "outcomeCode",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Goal.outcomeCode",
            valueSet: "http://hl7.org/fhir/ValueSet/clinical-findings"
        },
        "statusReason" : {
            name: "statusReason",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.statusReason"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.id"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.text"
        },
        "identifier" : {
            name: "identifier",
            dataType: Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Goal.identifier"
        },
        "priority" : {
            name: "priority",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.priority",
            valueSet: "http://hl7.org/fhir/ValueSet/goal-priority"
        },
        "target" : {
            name: "target",
            dataType: GoalTarget,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Goal.target"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Goal.contained"
        },
        "expressedBy" : {
            name: "expressedBy",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.expressedBy"
        },
        "startCodeableConcept" : {
            name: "startCodeableConcept",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.start[x]",
            valueSet: "http://hl7.org/fhir/ValueSet/goal-start-event"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.implicitRules"
        },
        "achievementStatus" : {
            name: "achievementStatus",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.achievementStatus",
            valueSet: "http://hl7.org/fhir/ValueSet/goal-achievement"
        },
        "category" : {
            name: "category",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Goal.category",
            valueSet: "http://hl7.org/fhir/ValueSet/goal-category"
        },
        "startDate" : {
            name: "startDate",
            dataType: date,
            min: 0,
            max: 1,
            isArray: false,
            path: "Goal.start[x]",
            valueSet: "http://hl7.org/fhir/ValueSet/goal-start-event"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type Goal record {|
    *DomainResource;

    RESOURCE_NAME_GOAL resourceType = RESOURCE_NAME_GOAL;

    BaseGoalMeta meta = {
        profile : [PROFILE_BASE_GOAL]
    };
    date statusDate?;
    Annotation[] note?;
    Reference[] addresses?;
    Extension[] extension?;
    GoalLifecycleStatus lifecycleStatus;
    Reference[] outcomeReference?;
    Reference subject;
    Extension[] modifierExtension?;
    CodeableConcept description;
    code language?;
    CodeableConcept[] outcomeCode?;
    string statusReason?;
    string id?;
    Narrative text?;
    Identifier[] identifier?;
    CodeableConcept priority?;
    GoalTarget[] target?;
    Resource[] contained?;
    Reference expressedBy?;
    CodeableConcept startCodeableConcept?;
    uri implicitRules?;
    CodeableConcept achievementStatus?;
    CodeableConcept[] category?;
    date startDate?;
|};

@DataTypeDefinition {
    name: "BaseGoalMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseGoalMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/Goal"];
    Coding[] security?;
    Coding[] tag?;
|};

# FHIR GoalTarget datatype record.
#
# + detailRange - The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + detailQuantity - The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
# + dueDate - Indicates either the date or the duration after start by which the goal should be met.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + detailString - The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
# + detailBoolean - The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
# + dueDuration - Indicates either the date or the duration after start by which the goal should be met.
# + measure - The parameter whose value is being tracked, e.g. body weight, blood pressure, or hemoglobin A1c level.
# + detailRatio - The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
# + detailInteger - The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
# + detailCodeableConcept - The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@DataTypeDefinition {
    name: "GoalTarget",
    baseType: (),
    elements: {
        "detailRange": {
            name: "detailRange",
            dataType: Range,
            min: 0,
            max: 1,
            isArray: false,
            description: "The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.",
            path: "Goal.target.detail[x]"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Goal.target.extension"
        },
        "detailQuantity": {
            name: "detailQuantity",
            dataType: Quantity,
            min: 0,
            max: 1,
            isArray: false,
            description: "The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.",
            path: "Goal.target.detail[x]"
        },
        "dueDate": {
            name: "dueDate",
            dataType: date,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates either the date or the duration after start by which the goal should be met.",
            path: "Goal.target.due[x]"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Goal.target.modifierExtension"
        },
        "detailString": {
            name: "detailString",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.",
            path: "Goal.target.detail[x]"
        },
        "detailBoolean": {
            name: "detailBoolean",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            description: "The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.",
            path: "Goal.target.detail[x]"
        },
        "dueDuration": {
            name: "dueDuration",
            dataType: Duration,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates either the date or the duration after start by which the goal should be met.",
            path: "Goal.target.due[x]"
        },
        "measure": {
            name: "measure",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The parameter whose value is being tracked, e.g. body weight, blood pressure, or hemoglobin A1c level.",
            path: "Goal.target.measure"
        },
        "detailRatio": {
            name: "detailRatio",
            dataType: Ratio,
            min: 0,
            max: 1,
            isArray: false,
            description: "The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.",
            path: "Goal.target.detail[x]"
        },
        "detailInteger": {
            name: "detailInteger",
            dataType: integer,
            min: 0,
            max: 1,
            isArray: false,
            description: "The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.",
            path: "Goal.target.detail[x]"
        },
        "detailCodeableConcept": {
            name: "detailCodeableConcept",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.",
            path: "Goal.target.detail[x]"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Goal.target.id"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type GoalTarget record {|
    Range detailRange?;
    Extension[] extension?;
    Quantity detailQuantity?;
    date dueDate?;
    Extension[] modifierExtension?;
    string detailString?;
    boolean detailBoolean?;
    Duration dueDuration?;
    CodeableConcept measure?;
    Ratio detailRatio?;
    integer detailInteger?;
    CodeableConcept detailCodeableConcept?;
    string id?;
|};

# GoalLifecycleStatus enum
public enum GoalLifecycleStatus {
   CODE_LIFECYCLESTATUS_PROPOSED = "proposed",
   CODE_LIFECYCLESTATUS_REJECTED = "rejected",
   CODE_LIFECYCLESTATUS_ACCEPTED = "accepted",
   CODE_LIFECYCLESTATUS_ACTIVE = "active",
   CODE_LIFECYCLESTATUS_CANCELLED = "cancelled",
   CODE_LIFECYCLESTATUS_PLANNED = "planned",
   CODE_LIFECYCLESTATUS_COMPLETED = "completed",
   CODE_LIFECYCLESTATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_LIFECYCLESTATUS_ON_HOLD = "on-hold"
}

