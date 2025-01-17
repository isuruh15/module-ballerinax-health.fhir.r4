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


public const string PROFILE_BASE_MEDIA = "http://hl7.org/fhir/StructureDefinition/Media";
public const RESOURCE_NAME_MEDIA = "Media";

# FHIR Media resource record.
#
# + resourceType - The type of the resource describes
# + note - Comments made about the media by the performer, subject or other participants.
# + partOf - A larger event of which this particular event is a component or step.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modality - Details of the type of the media - usually, how it was acquired (what type of device). If images sourced from a DICOM system, are wrapped in a Media resource, then this is the modality.
# + subject - Who/What this Media is a record of.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + createdDateTime - The date and time(s) at which the media was collected.
# + language - The base language in which the resource is written.
# + 'type - A code that classifies whether the media is an image, video or audio recording or some other media category.
# + deviceName - The name of the device / manufacturer of the device that was used to make the recording.
# + content - The actual content of the media - inline or by direct reference to the media source file.
# + operator - The person who administered the collection of the image.
# + duration - The duration of the recording in seconds - for audio and video.
# + view - The name of the imaging view e.g. Lateral or Antero-posterior (AP).
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + reasonCode - Describes why the event occurred in coded or textual form.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + issued - The date and time this version of the media was made available to providers, typically after having been reviewed.
# + basedOn - A procedure that is fulfilled in whole or in part by the creation of this media.
# + height - Height of the image in pixels (photo/video).
# + identifier - Identifiers associated with the image - these may include identifiers for the image itself, identifiers for the context of its collection (e.g. series ids) and context ids such as accession numbers or other workflow identifiers.
# + frames - The number of frames in a photo. This is used with a multi-page fax, or an imaging acquisition context that takes multiple slices in a single image, or an animated gif. If there is more than one frame, this SHALL have a value in order to alert interface software that a multi-frame capable rendering widget is required.
# + encounter - The encounter that establishes the context for this media.
# + createdPeriod - The date and time(s) at which the media was collected.
# + bodySite - Indicates the site on the subject's body where the observation was made (i.e. the target site).
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + width - Width of the image in pixels (photo/video).
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + device - The device used to collect the media.
# + status - The current state of the {{title}}.
@ResourceDefinition {
    resourceType: "Media",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Media",
    elements: {
        "note" : {
            name: "note",
            dataType: Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.note"
        },
        "partOf" : {
            name: "partOf",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.partOf"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.extension"
        },
        "modality" : {
            name: "modality",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.modality",
            valueSet: "http://hl7.org/fhir/ValueSet/media-modality"
        },
        "subject" : {
            name: "subject",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.modifierExtension"
        },
        "createdDateTime" : {
            name: "createdDateTime",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.created[x]"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "type" : {
            name: "type",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.type",
            valueSet: "http://hl7.org/fhir/ValueSet/media-type"
        },
        "deviceName" : {
            name: "deviceName",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.deviceName"
        },
        "content" : {
            name: "content",
            dataType: Attachment,
            min: 1,
            max: 1,
            isArray: false,
            path: "Media.content"
        },
        "operator" : {
            name: "operator",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.operator"
        },
        "duration" : {
            name: "duration",
            dataType: decimal,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.duration"
        },
        "view" : {
            name: "view",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.view",
            valueSet: "http://hl7.org/fhir/ValueSet/media-view"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.id"
        },
        "reasonCode" : {
            name: "reasonCode",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.reasonCode",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-reason"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.text"
        },
        "issued" : {
            name: "issued",
            dataType: instant,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.issued"
        },
        "basedOn" : {
            name: "basedOn",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.basedOn"
        },
        "height" : {
            name: "height",
            dataType: positiveInt,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.height"
        },
        "identifier" : {
            name: "identifier",
            dataType: Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.identifier"
        },
        "frames" : {
            name: "frames",
            dataType: positiveInt,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.frames"
        },
        "encounter" : {
            name: "encounter",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.encounter"
        },
        "createdPeriod" : {
            name: "createdPeriod",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.created[x]"
        },
        "bodySite" : {
            name: "bodySite",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.bodySite",
            valueSet: "http://hl7.org/fhir/ValueSet/body-site"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.contained"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.meta"
        },
        "width" : {
            name: "width",
            dataType: positiveInt,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.width"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.implicitRules"
        },
        "device" : {
            name: "device",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.device"
        },
        "status" : {
            name: "status",
            dataType: MediaStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Media.status",
            valueSet: "http://hl7.org/fhir/ValueSet/event-status|4.0.1"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type Media record {|
    *DomainResource;

    RESOURCE_NAME_MEDIA resourceType = RESOURCE_NAME_MEDIA;

    BaseMediaMeta meta = {
        profile : [PROFILE_BASE_MEDIA]
    };
    Annotation[] note?;
    Reference[] partOf?;
    Extension[] extension?;
    CodeableConcept modality?;
    Reference subject?;
    Extension[] modifierExtension?;
    dateTime createdDateTime?;
    code language?;
    CodeableConcept 'type?;
    string deviceName?;
    Attachment content;
    Reference operator?;
    decimal duration?;
    CodeableConcept view?;
    string id?;
    CodeableConcept[] reasonCode?;
    Narrative text?;
    instant issued?;
    Reference[] basedOn?;
    positiveInt height?;
    Identifier[] identifier?;
    positiveInt frames?;
    Reference encounter?;
    Period createdPeriod?;
    CodeableConcept bodySite?;
    Resource[] contained?;
    positiveInt width?;
    uri implicitRules?;
    Reference device?;
    MediaStatus status;
|};

@DataTypeDefinition {
    name: "BaseMediaMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseMediaMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/Media"];
    Coding[] security?;
    Coding[] tag?;
|};

# MediaStatus enum
public enum MediaStatus {
   CODE_STATUS_STOPPED = "stopped",
   CODE_STATUS_COMPLETED = "completed",
   CODE_STATUS_NOT_DONE = "not-done",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_IN_PROGRESS = "in-progress",
   CODE_STATUS_ON_HOLD = "on-hold",
   CODE_STATUS_PREPARATION = "preparation",
   CODE_STATUS_UNKNOWN = "unknown"
}

