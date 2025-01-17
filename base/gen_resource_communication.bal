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


public const string PROFILE_BASE_COMMUNICATION = "http://hl7.org/fhir/StructureDefinition/Communication";
public const RESOURCE_NAME_COMMUNICATION = "Communication";

# FHIR Communication resource record.
#
# + resourceType - The type of the resource describes
# + note - Additional notes or commentary about the communication by the sender, receiver or other interested parties.
# + partOf - Part of this action.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + subject - The patient or group that was the focus of this communication.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + about - Other resources that pertain to this communication and to which this communication should be associated.
# + reasonReference - Indicates another resource whose existence justifies this communication.
# + language - The base language in which the resource is written.
# + medium - A channel that was used for this communication (e.g. email, fax).
# + instantiatesUri - The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this Communication.
# + statusReason - Captures the reason for the current state of the Communication.
# + payload - Text, attachment(s), or resource(s) that was communicated to the recipient.
# + inResponseTo - Prior communication that this communication is in response to.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + reasonCode - The reason or justification for the communication.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + basedOn - An order, proposal or plan fulfilled in whole or in part by this Communication.
# + identifier - Business identifiers assigned to this communication by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
# + received - The time when this communication arrived at the destination.
# + encounter - The Encounter during which this Communication was created or to which the creation of this record is tightly associated.
# + instantiatesCanonical - The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this Communication.
# + priority - Characterizes how quickly the planned or in progress communication must be addressed. Includes concepts such as stat, urgent, routine.
# + sent - The time when this communication was sent.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + sender - The entity (e.g. person, organization, clinical information system, or device) which was the source of the communication.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + recipient - The entity (e.g. person, organization, clinical information system, care team or device) which was the target of the communication. If receipts need to be tracked by an individual, a separate resource instance will need to be created for each recipient. Multiple recipient communications are intended where either receipts are not tracked (e.g. a mass mail-out) or a receipt is captured in aggregate (all emails confirmed received by a particular time).
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + topic - Description of the purpose/content, similar to a subject line in an email.
# + category - The type of message conveyed such as alert, notification, reminder, instruction, etc.
# + status - The status of the transmission.
@ResourceDefinition {
    resourceType: "Communication",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Communication",
    elements: {
        "note" : {
            name: "note",
            dataType: Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.note"
        },
        "partOf" : {
            name: "partOf",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.partOf"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.extension"
        },
        "subject" : {
            name: "subject",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.modifierExtension"
        },
        "about" : {
            name: "about",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.about"
        },
        "reasonReference" : {
            name: "reasonReference",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.reasonReference"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "medium" : {
            name: "medium",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.medium",
            valueSet: "http://terminology.hl7.org/ValueSet/v3-ParticipationMode"
        },
        "instantiatesUri" : {
            name: "instantiatesUri",
            dataType: uri,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.instantiatesUri"
        },
        "statusReason" : {
            name: "statusReason",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.statusReason",
            valueSet: "http://hl7.org/fhir/ValueSet/communication-not-done-reason"
        },
        "payload" : {
            name: "payload",
            dataType: CommunicationPayload,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.payload"
        },
        "inResponseTo" : {
            name: "inResponseTo",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.inResponseTo"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.id"
        },
        "reasonCode" : {
            name: "reasonCode",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.reasonCode",
            valueSet: "http://hl7.org/fhir/ValueSet/clinical-findings"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.text"
        },
        "basedOn" : {
            name: "basedOn",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.basedOn"
        },
        "identifier" : {
            name: "identifier",
            dataType: Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.identifier"
        },
        "received" : {
            name: "received",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.received"
        },
        "encounter" : {
            name: "encounter",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.encounter"
        },
        "instantiatesCanonical" : {
            name: "instantiatesCanonical",
            dataType: canonical,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.instantiatesCanonical"
        },
        "priority" : {
            name: "priority",
            dataType: CommunicationPriority,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.priority",
            valueSet: "http://hl7.org/fhir/ValueSet/request-priority|4.0.1"
        },
        "sent" : {
            name: "sent",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.sent"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.contained"
        },
        "sender" : {
            name: "sender",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.sender"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.meta"
        },
        "recipient" : {
            name: "recipient",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.recipient"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.implicitRules"
        },
        "topic" : {
            name: "topic",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Communication.topic",
            valueSet: "http://hl7.org/fhir/ValueSet/communication-topic"
        },
        "category" : {
            name: "category",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Communication.category",
            valueSet: "http://hl7.org/fhir/ValueSet/communication-category"
        },
        "status" : {
            name: "status",
            dataType: CommunicationStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Communication.status",
            valueSet: "http://hl7.org/fhir/ValueSet/event-status|4.0.1"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type Communication record {|
    *DomainResource;

    RESOURCE_NAME_COMMUNICATION resourceType = RESOURCE_NAME_COMMUNICATION;

    BaseCommunicationMeta meta = {
        profile : [PROFILE_BASE_COMMUNICATION]
    };
    Annotation[] note?;
    Reference[] partOf?;
    Extension[] extension?;
    Reference subject?;
    Extension[] modifierExtension?;
    Reference[] about?;
    Reference[] reasonReference?;
    code language?;
    CodeableConcept[] medium?;
    uri[] instantiatesUri?;
    CodeableConcept statusReason?;
    CommunicationPayload[] payload?;
    Reference[] inResponseTo?;
    string id?;
    CodeableConcept[] reasonCode?;
    Narrative text?;
    Reference[] basedOn?;
    Identifier[] identifier?;
    dateTime received?;
    Reference encounter?;
    canonical[] instantiatesCanonical?;
    CommunicationPriority priority?;
    dateTime sent?;
    Resource[] contained?;
    Reference sender?;
    Reference[] recipient?;
    uri implicitRules?;
    CodeableConcept topic?;
    CodeableConcept[] category?;
    CommunicationStatus status;
|};

@DataTypeDefinition {
    name: "BaseCommunicationMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseCommunicationMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/Communication"];
    Coding[] security?;
    Coding[] tag?;
|};

# CommunicationStatus enum
public enum CommunicationStatus {
   CODE_STATUS_STOPPED = "stopped",
   CODE_STATUS_COMPLETED = "completed",
   CODE_STATUS_NOT_DONE = "not-done",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_IN_PROGRESS = "in-progress",
   CODE_STATUS_ON_HOLD = "on-hold",
   CODE_STATUS_PREPARATION = "preparation",
   CODE_STATUS_UNKNOWN = "unknown"
}

# FHIR CommunicationPayload datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + contentReference - A communicated content (or for multi-part communications, one portion of the communication).
# + contentString - A communicated content (or for multi-part communications, one portion of the communication).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + contentAttachment - A communicated content (or for multi-part communications, one portion of the communication).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@DataTypeDefinition {
    name: "CommunicationPayload",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Communication.payload.extension"
        },
        "contentReference": {
            name: "contentReference",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "A communicated content (or for multi-part communications, one portion of the communication).",
            path: "Communication.payload.content[x]"
        },
        "contentString": {
            name: "contentString",
            dataType: string,
            min: 1,
            max: 1,
            isArray: false,
            description: "A communicated content (or for multi-part communications, one portion of the communication).",
            path: "Communication.payload.content[x]"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Communication.payload.modifierExtension"
        },
        "contentAttachment": {
            name: "contentAttachment",
            dataType: Attachment,
            min: 1,
            max: 1,
            isArray: false,
            description: "A communicated content (or for multi-part communications, one portion of the communication).",
            path: "Communication.payload.content[x]"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Communication.payload.id"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type CommunicationPayload record {|
    Extension[] extension?;
    Reference contentReference;
    string contentString;
    Extension[] modifierExtension?;
    Attachment contentAttachment;
    string id?;
|};

# CommunicationPriority enum
public enum CommunicationPriority {
   CODE_PRIORITY_STAT = "stat",
   CODE_PRIORITY_ROUTINE = "routine",
   CODE_PRIORITY_URGENT = "urgent",
   CODE_PRIORITY_ASAP = "asap"
}

