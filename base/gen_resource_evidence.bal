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


public const string PROFILE_BASE_EVIDENCE = "http://hl7.org/fhir/StructureDefinition/Evidence";
public const RESOURCE_NAME_EVIDENCE = "Evidence";

# FHIR Evidence resource record.
#
# + resourceType - The type of the resource describes
# + date - The date (and optionally time) when the evidence was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the evidence changes.
# + note - A human-readable string to clarify or explain concepts about the resource.
# + copyright - A copyright statement relating to the evidence and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the evidence.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + approvalDate - The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
# + jurisdiction - A legal or geographic region in which the evidence is intended to be used.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - A free text natural language description of the evidence from a consumer's perspective.
# + language - The base language in which the resource is written.
# + shortTitle - The short title provides an alternate title for use in informal descriptive contexts where the full, formal title is not necessary.
# + title - A short, descriptive, user-friendly title for the evidence.
# + contact - Contact details to assist a user in finding and communicating with the publisher.
# + endorser - An individual or organization responsible for officially endorsing the content for use in some setting.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + outcome - A reference to a EvidenceVariable resomece that defines the outcome for the research.
# + editor - An individual or organization primarily responsible for internal coherence of the content.
# + identifier - A formal identifier that is used to identify this evidence when it is represented in other formats, or referenced in a specification, model, design or an instance.
# + relatedArtifact - Related artifacts such as additional documentation, justification, or bibliographic references.
# + effectivePeriod - The period during which the evidence content was or is planned to be in active use.
# + author - An individiual or organization primarily involved in the creation and maintenance of the content.
# + reviewer - An individual or organization primarily responsible for review of some aspect of the content.
# + exposureVariant - A reference to a EvidenceVariable resource that defines the exposure for the research.
# + 'version - The identifier that is used to identify this version of the evidence when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the evidence author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active artifacts.
# + url - An absolute URI that is used to identify this evidence when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this evidence is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the evidence is stored on different servers.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + exposureBackground - A reference to a EvidenceVariable resource that defines the population for the research.
# + lastReviewDate - The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + subtitle - An explanatory or alternate title for the Evidence giving additional information about its content.
# + name - A natural language name identifying the evidence. This name should be usable as an identifier for the module by machine processing applications such as code generation.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + publisher - The name of the organization or individual that published the evidence.
# + topic - Descriptive topics related to the content of the Evidence. Topics provide a high-level categorization grouping types of Evidences that can be useful for filtering and searching.
# + useContext - The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate evidence instances.
# + status - The status of this evidence. Enables tracking the life-cycle of the content.
@ResourceDefinition {
    resourceType: "Evidence",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Evidence",
    elements: {
        "date" : {
            name: "date",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.date"
        },
        "note" : {
            name: "note",
            dataType: Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.note"
        },
        "copyright" : {
            name: "copyright",
            dataType: markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.copyright"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.extension"
        },
        "approvalDate" : {
            name: "approvalDate",
            dataType: date,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.approvalDate"
        },
        "jurisdiction" : {
            name: "jurisdiction",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.jurisdiction",
            valueSet: "http://hl7.org/fhir/ValueSet/jurisdiction"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.modifierExtension"
        },
        "description" : {
            name: "description",
            dataType: markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.description"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "shortTitle" : {
            name: "shortTitle",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.shortTitle"
        },
        "title" : {
            name: "title",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.title"
        },
        "contact" : {
            name: "contact",
            dataType: ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.contact"
        },
        "endorser" : {
            name: "endorser",
            dataType: ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.endorser"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.id"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.text"
        },
        "outcome" : {
            name: "outcome",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.outcome"
        },
        "editor" : {
            name: "editor",
            dataType: ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.editor"
        },
        "identifier" : {
            name: "identifier",
            dataType: Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.identifier"
        },
        "relatedArtifact" : {
            name: "relatedArtifact",
            dataType: RelatedArtifact,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.relatedArtifact"
        },
        "effectivePeriod" : {
            name: "effectivePeriod",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.effectivePeriod"
        },
        "author" : {
            name: "author",
            dataType: ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.author"
        },
        "reviewer" : {
            name: "reviewer",
            dataType: ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.reviewer"
        },
        "exposureVariant" : {
            name: "exposureVariant",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.exposureVariant"
        },
        "version" : {
            name: "version",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.version"
        },
        "url" : {
            name: "url",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.url"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.contained"
        },
        "exposureBackground" : {
            name: "exposureBackground",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "Evidence.exposureBackground"
        },
        "lastReviewDate" : {
            name: "lastReviewDate",
            dataType: date,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.lastReviewDate"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.meta"
        },
        "subtitle" : {
            name: "subtitle",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.subtitle"
        },
        "name" : {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.name"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.implicitRules"
        },
        "publisher" : {
            name: "publisher",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Evidence.publisher"
        },
        "topic" : {
            name: "topic",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.topic",
            valueSet: "http://hl7.org/fhir/ValueSet/definition-topic"
        },
        "useContext" : {
            name: "useContext",
            dataType: UsageContext,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Evidence.useContext"
        },
        "status" : {
            name: "status",
            dataType: EvidenceStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Evidence.status",
            valueSet: "http://hl7.org/fhir/ValueSet/publication-status|4.0.1"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type Evidence record {|
    *DomainResource;

    RESOURCE_NAME_EVIDENCE resourceType = RESOURCE_NAME_EVIDENCE;

    BaseEvidenceMeta meta = {
        profile : [PROFILE_BASE_EVIDENCE]
    };
    dateTime date?;
    Annotation[] note?;
    markdown copyright?;
    Extension[] extension?;
    date approvalDate?;
    CodeableConcept[] jurisdiction?;
    Extension[] modifierExtension?;
    markdown description?;
    code language?;
    string shortTitle?;
    string title?;
    ContactDetail[] contact?;
    ContactDetail[] endorser?;
    string id?;
    Narrative text?;
    Reference[] outcome?;
    ContactDetail[] editor?;
    Identifier[] identifier?;
    RelatedArtifact[] relatedArtifact?;
    Period effectivePeriod?;
    ContactDetail[] author?;
    ContactDetail[] reviewer?;
    Reference[] exposureVariant?;
    string 'version?;
    uri url?;
    Resource[] contained?;
    Reference exposureBackground;
    date lastReviewDate?;
    string subtitle?;
    string name?;
    uri implicitRules?;
    string publisher?;
    CodeableConcept[] topic?;
    UsageContext[] useContext?;
    EvidenceStatus status;
|};

@DataTypeDefinition {
    name: "BaseEvidenceMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseEvidenceMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/Evidence"];
    Coding[] security?;
    Coding[] tag?;
|};

# EvidenceStatus enum
public enum EvidenceStatus {
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_RETIRED = "retired",
   CODE_STATUS_UNKNOWN = "unknown"
}

