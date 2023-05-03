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


public const string PROFILE_BASE_BIOLOGICALLYDERIVEDPRODUCT = "http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct";
public const RESOURCE_NAME_BIOLOGICALLYDERIVEDPRODUCT = "BiologicallyDerivedProduct";

# FHIR BiologicallyDerivedProduct resource record.
#
# + resourceType - The type of the resource describes
# + identifier - This records identifiers associated with this biologically derived product instance that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate (e.g. in CDA documents, or in written / printed documentation).
# + parent - Parent product (if any).
# + request - Procedure request to obtain this biologically derived product.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + quantity - Number of discrete units within this product.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + collection - How this product was collected.
# + storage - Product storage.
# + productCategory - Broad category of this product.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + productCode - A code that identifies the kind of this biologically derived product (SNOMED Ctcode).
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + processing - Any processing of the product during collection that does not change the fundamental nature of the product. For example adding anti-coagulants during the collection of Peripheral Blood Stem Cells.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + manipulation - Any manipulation of product post-collection that is intended to alter the product. For example a buffy-coat enrichment or CD8 reduction of Peripheral Blood Stem Cells to make it more suitable for infusion.
# + status - Whether the product is currently available.
@ResourceDefinition {
    resourceType: "BiologicallyDerivedProduct",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "BiologicallyDerivedProduct.identifier"
        },
        "parent" : {
            name: "parent",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "BiologicallyDerivedProduct.parent"
        },
        "request" : {
            name: "request",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "BiologicallyDerivedProduct.request"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "BiologicallyDerivedProduct.extension"
        },
        "quantity" : {
            name: "quantity",
            dataType: integer,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.quantity"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "BiologicallyDerivedProduct.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "collection" : {
            name: "collection",
            dataType: BiologicallyDerivedProductCollection,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.collection"
        },
        "storage" : {
            name: "storage",
            dataType: BiologicallyDerivedProductStorage,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "BiologicallyDerivedProduct.storage"
        },
        "productCategory" : {
            name: "productCategory",
            dataType: BiologicallyDerivedProductProductCategory,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.productCategory",
            valueSet: "http://hl7.org/fhir/ValueSet/product-category|4.0.1"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "BiologicallyDerivedProduct.contained"
        },
        "productCode" : {
            name: "productCode",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.productCode"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.implicitRules"
        },
        "processing" : {
            name: "processing",
            dataType: BiologicallyDerivedProductProcessing,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "BiologicallyDerivedProduct.processing"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.id"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.text"
        },
        "manipulation" : {
            name: "manipulation",
            dataType: BiologicallyDerivedProductManipulation,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.manipulation"
        },
        "status" : {
            name: "status",
            dataType: BiologicallyDerivedProductStatus,
            min: 0,
            max: 1,
            isArray: false,
            path: "BiologicallyDerivedProduct.status",
            valueSet: "http://hl7.org/fhir/ValueSet/product-status|4.0.1"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type BiologicallyDerivedProduct record {|
    *DomainResource;

    RESOURCE_NAME_BIOLOGICALLYDERIVEDPRODUCT resourceType = RESOURCE_NAME_BIOLOGICALLYDERIVEDPRODUCT;

    BaseBiologicallyDerivedProductMeta meta = {
        profile : [PROFILE_BASE_BIOLOGICALLYDERIVEDPRODUCT]
    };
    Identifier[] identifier?;
    Reference[] parent?;
    Reference[] request?;
    Extension[] extension?;
    integer quantity?;
    Extension[] modifierExtension?;
    code language?;
    BiologicallyDerivedProductCollection collection?;
    BiologicallyDerivedProductStorage[] storage?;
    BiologicallyDerivedProductProductCategory productCategory?;
    Resource[] contained?;
    CodeableConcept productCode?;
    uri implicitRules?;
    BiologicallyDerivedProductProcessing[] processing?;
    string id?;
    Narrative text?;
    BiologicallyDerivedProductManipulation manipulation?;
    BiologicallyDerivedProductStatus status?;
|};

@DataTypeDefinition {
    name: "BaseBiologicallyDerivedProductMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseBiologicallyDerivedProductMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct"];
    Coding[] security?;
    Coding[] tag?;
|};

# FHIR BiologicallyDerivedProductStorage datatype record.
#
# + duration - Storage timeperiod.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + temperature - Storage temperature.
# + description - Description of storage.
# + scale - Temperature scale used.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@DataTypeDefinition {
    name: "BiologicallyDerivedProductStorage",
    baseType: (),
    elements: {
        "duration": {
            name: "duration",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "Storage timeperiod.",
            path: "BiologicallyDerivedProduct.storage.duration"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "BiologicallyDerivedProduct.storage.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "BiologicallyDerivedProduct.storage.modifierExtension"
        },
        "temperature": {
            name: "temperature",
            dataType: decimal,
            min: 0,
            max: 1,
            isArray: false,
            description: "Storage temperature.",
            path: "BiologicallyDerivedProduct.storage.temperature"
        },
        "description": {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Description of storage.",
            path: "BiologicallyDerivedProduct.storage.description"
        },
        "scale": {
            name: "scale",
            dataType: BiologicallyDerivedProductStorageScale,
            min: 0,
            max: 1,
            isArray: false,
            description: "Temperature scale used.",
            path: "BiologicallyDerivedProduct.storage.scale"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "BiologicallyDerivedProduct.storage.id"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BiologicallyDerivedProductStorage record {|
    Period duration?;
    Extension[] extension?;
    Extension[] modifierExtension?;
    decimal temperature?;
    string description?;
    BiologicallyDerivedProductStorageScale scale?;
    string id?;
|};

# FHIR BiologicallyDerivedProductProcessing datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + timePeriod - Time of processing.
# + description - Description of of processing.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + procedure - Procesing code.
# + timeDateTime - Time of processing.
# + additive - Substance added during processing.
@DataTypeDefinition {
    name: "BiologicallyDerivedProductProcessing",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "BiologicallyDerivedProduct.processing.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "BiologicallyDerivedProduct.processing.modifierExtension"
        },
        "timePeriod": {
            name: "timePeriod",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "Time of processing.",
            path: "BiologicallyDerivedProduct.processing.time[x]"
        },
        "description": {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Description of of processing.",
            path: "BiologicallyDerivedProduct.processing.description"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "BiologicallyDerivedProduct.processing.id"
        },
        "procedure": {
            name: "procedure",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Procesing code.",
            path: "BiologicallyDerivedProduct.processing.procedure"
        },
        "timeDateTime": {
            name: "timeDateTime",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            description: "Time of processing.",
            path: "BiologicallyDerivedProduct.processing.time[x]"
        },
        "additive": {
            name: "additive",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Substance added during processing.",
            path: "BiologicallyDerivedProduct.processing.additive"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BiologicallyDerivedProductProcessing record {|
    Extension[] extension?;
    Extension[] modifierExtension?;
    Period timePeriod?;
    string description?;
    string id?;
    CodeableConcept procedure?;
    dateTime timeDateTime?;
    Reference additive?;
|};

# FHIR BiologicallyDerivedProductManipulation datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + timePeriod - Time of manipulation.
# + description - Description of manipulation.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + timeDateTime - Time of manipulation.
@DataTypeDefinition {
    name: "BiologicallyDerivedProductManipulation",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "BiologicallyDerivedProduct.manipulation.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "BiologicallyDerivedProduct.manipulation.modifierExtension"
        },
        "timePeriod": {
            name: "timePeriod",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "Time of manipulation.",
            path: "BiologicallyDerivedProduct.manipulation.time[x]"
        },
        "description": {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Description of manipulation.",
            path: "BiologicallyDerivedProduct.manipulation.description"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "BiologicallyDerivedProduct.manipulation.id"
        },
        "timeDateTime": {
            name: "timeDateTime",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            description: "Time of manipulation.",
            path: "BiologicallyDerivedProduct.manipulation.time[x]"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BiologicallyDerivedProductManipulation record {|
    Extension[] extension?;
    Extension[] modifierExtension?;
    Period timePeriod?;
    string description?;
    string id?;
    dateTime timeDateTime?;
|};

# BiologicallyDerivedProductStatus enum
public enum BiologicallyDerivedProductStatus {
   CODE_STATUS_UNAVAILABLE = "unavailable",
   CODE_STATUS_AVAILABLE = "available"
}

# BiologicallyDerivedProductProductCategory enum
public enum BiologicallyDerivedProductProductCategory {
   CODE_PRODUCTCATEGORY_ORGAN = "organ",
   CODE_PRODUCTCATEGORY_CELLS = "cells",
   CODE_PRODUCTCATEGORY_BIOLOGICALAGENT = "biologicalAgent",
   CODE_PRODUCTCATEGORY_TISSUE = "tissue",
   CODE_PRODUCTCATEGORY_FLUID = "fluid"
}

# FHIR BiologicallyDerivedProductCollection datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + collectedPeriod - Time of product collection.
# + collectedDateTime - Time of product collection.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + 'source - The patient or entity, such as a hospital or vendor in the case of a processed/manipulated/manufactured product, providing the product.
# + collector - Healthcare professional who is performing the collection.
@DataTypeDefinition {
    name: "BiologicallyDerivedProductCollection",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "BiologicallyDerivedProduct.collection.extension"
        },
        "collectedPeriod": {
            name: "collectedPeriod",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "Time of product collection.",
            path: "BiologicallyDerivedProduct.collection.collected[x]"
        },
        "collectedDateTime": {
            name: "collectedDateTime",
            dataType: dateTime,
            min: 0,
            max: 1,
            isArray: false,
            description: "Time of product collection.",
            path: "BiologicallyDerivedProduct.collection.collected[x]"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "BiologicallyDerivedProduct.collection.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "BiologicallyDerivedProduct.collection.id"
        },
        "source": {
            name: "source",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "The patient or entity, such as a hospital or vendor in the case of a processed/manipulated/manufactured product, providing the product.",
            path: "BiologicallyDerivedProduct.collection.source"
        },
        "collector": {
            name: "collector",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Healthcare professional who is performing the collection.",
            path: "BiologicallyDerivedProduct.collection.collector"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BiologicallyDerivedProductCollection record {|
    Extension[] extension?;
    Period collectedPeriod?;
    dateTime collectedDateTime?;
    Extension[] modifierExtension?;
    string id?;
    Reference 'source?;
    Reference collector?;
|};

# BiologicallyDerivedProductStorageScale enum
public enum BiologicallyDerivedProductStorageScale {
   CODE_SCALE_KELVIN = "kelvin",
   CODE_SCALE_CELSIUS = "celsius",
   CODE_SCALE_FARENHEIT = "farenheit"
}

