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

public const string PROFILE_BASE_ENDPOINT = "http://hl7.org/fhir/StructureDefinition/Endpoint";
public const RESOURCE_NAME_ENDPOINT = "Endpoint";

# FHIR Endpoint resource record.
#
# + resourceType - The type of the resource describes
# + identifier - Identifier for the organization that is used to identify the endpoint across multiple disparate systems.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - The interval during which the endpoint is expected to be operational.
# + address - The uri that describes the actual end-point to connect to.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + connectionType - A coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way. (e.g. XDS.b/DICOM/cds-hook).
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + managingOrganization - The organization that manages this endpoint (even if technically another organization is hosting this in the cloud, it is the organization associated with the data).
# + payloadType - The payload type describes the acceptable content that can be communicated on the endpoint.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + contact - Contact details for a human to contact about the subscription. The primary use of this for system administrator troubleshooting.
# + name - A friendly name that this endpoint can be referred to with.
# + header - Additional headers / information to send as part of the notification.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + payloadMimeType - The mime type to send the payload in - e.g. application/fhir+xml, application/fhir+json. If the mime type is not specified, then the sender could send any content (including no content depending on the connectionType).
# + status - active | suspended | error | off | test.
@ResourceDefinition {
    resourceType: "Endpoint",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Endpoint",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.extension"
        },
        "period" : {
            name: "period",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.period"
        },
        "address" : {
            name: "address",
            dataType: urlType,
            min: 1,
            max: 1,
            isArray: false,
            path: "Endpoint.address"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "connectionType" : {
            name: "connectionType",
            dataType: Coding,
            min: 1,
            max: 1,
            isArray: false,
            path: "Endpoint.connectionType",
            valueSet: "http://hl7.org/fhir/ValueSet/endpoint-connection-type"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.contained"
        },
        "managingOrganization" : {
            name: "managingOrganization",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.managingOrganization"
        },
        "payloadType" : {
            name: "payloadType",
            dataType: CodeableConcept,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.payloadType",
            valueSet: "http://hl7.org/fhir/ValueSet/endpoint-payload-type"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.meta"
        },
        "contact" : {
            name: "contact",
            dataType: ContactPoint,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.contact"
        },
        "name" : {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.name"
        },
        "header" : {
            name: "header",
            dataType: string,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.header"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.id"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.text"
        },
        "payloadMimeType" : {
            name: "payloadMimeType",
            dataType: code,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.payloadMimeType",
            valueSet: "http://hl7.org/fhir/ValueSet/mimetypes|4.0.1"
        },
        "status" : {
            name: "status",
            dataType: EndpointStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Endpoint.status",
            valueSet: "http://hl7.org/fhir/ValueSet/endpoint-status|4.0.1"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type Endpoint record {|
    *DomainResource;

    RESOURCE_NAME_ENDPOINT resourceType = RESOURCE_NAME_ENDPOINT;

    BaseEndpointMeta meta = {
        profile : [PROFILE_BASE_ENDPOINT]
    };
    Identifier[] identifier?;
    Extension[] extension?;
    Period period?;
    urlType address;
    Extension[] modifierExtension?;
    code language?;
    Coding connectionType;
    Resource[] contained?;
    Reference managingOrganization?;
    @constraint:Array {
       minLength: 1
    }
    CodeableConcept[] payloadType;
    ContactPoint[] contact?;
    string name?;
    string[] header?;
    uri implicitRules?;
    string id?;
    Narrative text?;
    code[] payloadMimeType?;
    EndpointStatus status;
|};

@DataTypeDefinition {
    name: "BaseEndpointMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseEndpointMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/Endpoint"];
    Coding[] security?;
    Coding[] tag?;
|};

# EndpointStatus enum
public enum EndpointStatus {
   CODE_STATUS_TEST = "test",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_ERROR = "error",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_SUSPENDED = "suspended",
   CODE_STATUS_OFF = "off"
}

