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

import ballerina/log;

const IG_FHIR_BASE = "international";

# Initializer for the module
# + return - returns error if error occurred
function init() returns FHIRError? {
    // Anything to initialize should happen here

    // Update terminology processor
    // TODO: https://github.com/wso2-enterprise/open-healthcare/issues/1047
    InMemoryTerminologyLoader terminologyLoader = new (FHIR_CODE_SYSTEMS, FHIR_VALUE_SETS);
    Terminology terminology = check terminologyLoader.load();

    readonly & IGInfoRecord baseIgRecord = {
        title: "international",
        name: "international",
        terminology: terminology,
        profiles: {
            "http://hl7.org/fhir/StructureDefinition/Appointment": {
                url: "http://hl7.org/fhir/StructureDefinition/Appointment",
                resourceType: "Appointment",
                modelType: Appointment
            },
            "http://hl7.org/fhir/StructureDefinition/Account": {
                url: "http://hl7.org/fhir/StructureDefinition/Account",
                resourceType: "Account",
                modelType: Account
            },
            "http://hl7.org/fhir/StructureDefinition/Invoice": {
                url: "http://hl7.org/fhir/StructureDefinition/Invoice",
                resourceType: "Invoice",
                modelType: Invoice
            },
            "http://hl7.org/fhir/StructureDefinition/CatalogEntry": {
                url: "http://hl7.org/fhir/StructureDefinition/CatalogEntry",
                resourceType: "CatalogEntry",
                modelType: CatalogEntry
            },
            "http://hl7.org/fhir/StructureDefinition/EventDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/EventDefinition",
                resourceType: "EventDefinition",
                modelType: EventDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/DocumentManifest": {
                url: "http://hl7.org/fhir/StructureDefinition/DocumentManifest",
                resourceType: "DocumentManifest",
                modelType: DocumentManifest
            },
            "http://hl7.org/fhir/StructureDefinition/MessageDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/MessageDefinition",
                resourceType: "MessageDefinition",
                modelType: MessageDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/Goal": {
                url: "http://hl7.org/fhir/StructureDefinition/Goal",
                resourceType: "Goal",
                modelType: Goal
            },
            "http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged",
                resourceType: "MedicinalProductPackaged",
                modelType: MedicinalProductPackaged
            },
            "http://hl7.org/fhir/StructureDefinition/Endpoint": {
                url: "http://hl7.org/fhir/StructureDefinition/Endpoint",
                resourceType: "Endpoint",
                modelType: Endpoint
            },
            "http://hl7.org/fhir/StructureDefinition/EnrollmentRequest": {
                url: "http://hl7.org/fhir/StructureDefinition/EnrollmentRequest",
                resourceType: "EnrollmentRequest",
                modelType: EnrollmentRequest
            },
            "http://hl7.org/fhir/StructureDefinition/Consent": {
                url: "http://hl7.org/fhir/StructureDefinition/Consent",
                resourceType: "Consent",
                modelType: Consent
            },
            "http://hl7.org/fhir/StructureDefinition/CapabilityStatement": {
                url: "http://hl7.org/fhir/StructureDefinition/CapabilityStatement",
                resourceType: "CapabilityStatement",
                modelType: CapabilityStatement
            },
            "http://hl7.org/fhir/StructureDefinition/Medication": {
                url: "http://hl7.org/fhir/StructureDefinition/Medication",
                resourceType: "Medication",
                modelType: Medication
            },
            "http://hl7.org/fhir/StructureDefinition/Measure": {
                url: "http://hl7.org/fhir/StructureDefinition/Measure",
                resourceType: "Measure",
                modelType: Measure
            },
            "http://hl7.org/fhir/StructureDefinition/ResearchSubject": {
                url: "http://hl7.org/fhir/StructureDefinition/ResearchSubject",
                resourceType: "ResearchSubject",
                modelType: ResearchSubject
            },
            "http://hl7.org/fhir/StructureDefinition/Subscription": {
                url: "http://hl7.org/fhir/StructureDefinition/Subscription",
                resourceType: "Subscription",
                modelType: Subscription
            },
            "http://hl7.org/fhir/StructureDefinition/GraphDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/GraphDefinition",
                resourceType: "GraphDefinition",
                modelType: GraphDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/DocumentReference": {
                url: "http://hl7.org/fhir/StructureDefinition/DocumentReference",
                resourceType: "DocumentReference",
                modelType: DocumentReference
            },
            "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse": {
                url: "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse",
                resourceType: "CoverageEligibilityResponse",
                modelType: CoverageEligibilityResponse
            },
            "http://hl7.org/fhir/StructureDefinition/MeasureReport": {
                url: "http://hl7.org/fhir/StructureDefinition/MeasureReport",
                resourceType: "MeasureReport",
                modelType: MeasureReport
            },
            "http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation": {
                url: "http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation",
                resourceType: "SubstanceReferenceInformation",
                modelType: SubstanceReferenceInformation
            },
            "http://hl7.org/fhir/StructureDefinition/PractitionerRole": {
                url: "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
                resourceType: "PractitionerRole",
                modelType: PractitionerRole
            },
            "http://hl7.org/fhir/StructureDefinition/RelatedPerson": {
                url: "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
                resourceType: "RelatedPerson",
                modelType: RelatedPerson
            },
            "http://hl7.org/fhir/StructureDefinition/ServiceRequest": {
                url: "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
                resourceType: "ServiceRequest",
                modelType: ServiceRequest
            },
            "http://hl7.org/fhir/StructureDefinition/SupplyRequest": {
                url: "http://hl7.org/fhir/StructureDefinition/SupplyRequest",
                resourceType: "SupplyRequest",
                modelType: SupplyRequest
            },
            "http://hl7.org/fhir/StructureDefinition/Practitioner": {
                url: "http://hl7.org/fhir/StructureDefinition/Practitioner",
                resourceType: "Practitioner",
                modelType: Practitioner
            },
            "http://hl7.org/fhir/StructureDefinition/VerificationResult": {
                url: "http://hl7.org/fhir/StructureDefinition/VerificationResult",
                resourceType: "VerificationResult",
                modelType: VerificationResult
            },
            "http://hl7.org/fhir/StructureDefinition/SubstanceProtein": {
                url: "http://hl7.org/fhir/StructureDefinition/SubstanceProtein",
                resourceType: "SubstanceProtein",
                modelType: SubstanceProtein
            },
            "http://hl7.org/fhir/StructureDefinition/BodyStructure": {
                url: "http://hl7.org/fhir/StructureDefinition/BodyStructure",
                resourceType: "BodyStructure",
                modelType: BodyStructure
            },
            "http://hl7.org/fhir/StructureDefinition/Slot": {
                url: "http://hl7.org/fhir/StructureDefinition/Slot",
                resourceType: "Slot",
                modelType: Slot
            },
            "http://hl7.org/fhir/StructureDefinition/Contract": {
                url: "http://hl7.org/fhir/StructureDefinition/Contract",
                resourceType: "Contract",
                modelType: Contract
            },
            "http://hl7.org/fhir/StructureDefinition/Person": {
                url: "http://hl7.org/fhir/StructureDefinition/Person",
                resourceType: "Person",
                modelType: Person
            },
            "http://hl7.org/fhir/StructureDefinition/RiskAssessment": {
                url: "http://hl7.org/fhir/StructureDefinition/RiskAssessment",
                resourceType: "RiskAssessment",
                modelType: RiskAssessment
            },
            "http://hl7.org/fhir/StructureDefinition/Group": {
                url: "http://hl7.org/fhir/StructureDefinition/Group",
                resourceType: "Group",
                modelType: Group
            },
            "http://hl7.org/fhir/StructureDefinition/ResearchDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/ResearchDefinition",
                resourceType: "ResearchDefinition",
                modelType: ResearchDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/PaymentNotice": {
                url: "http://hl7.org/fhir/StructureDefinition/PaymentNotice",
                resourceType: "PaymentNotice",
                modelType: PaymentNotice
            },
            "http://hl7.org/fhir/StructureDefinition/MedicinalProductManufactured": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicinalProductManufactured",
                resourceType: "MedicinalProductManufactured",
                modelType: MedicinalProductManufactured
            },
            "http://hl7.org/fhir/StructureDefinition/Organization": {
                url: "http://hl7.org/fhir/StructureDefinition/Organization",
                resourceType: "Organization",
                modelType: Organization
            },
            "http://hl7.org/fhir/StructureDefinition/ImplementationGuide": {
                url: "http://hl7.org/fhir/StructureDefinition/ImplementationGuide",
                resourceType: "ImplementationGuide",
                modelType: ImplementationGuide
            },
            "http://hl7.org/fhir/StructureDefinition/CareTeam": {
                url: "http://hl7.org/fhir/StructureDefinition/CareTeam",
                resourceType: "CareTeam",
                modelType: CareTeam
            },
            "http://hl7.org/fhir/StructureDefinition/ImagingStudy": {
                url: "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
                resourceType: "ImagingStudy",
                modelType: ImagingStudy
            },
            "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory": {
                url: "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory",
                resourceType: "FamilyMemberHistory",
                modelType: FamilyMemberHistory
            },
            "http://hl7.org/fhir/StructureDefinition/ChargeItem": {
                url: "http://hl7.org/fhir/StructureDefinition/ChargeItem",
                resourceType: "ChargeItem",
                modelType: ChargeItem
            },
            "http://hl7.org/fhir/StructureDefinition/ResearchElementDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/ResearchElementDefinition",
                resourceType: "ResearchElementDefinition",
                modelType: ResearchElementDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/ObservationDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/ObservationDefinition",
                resourceType: "ObservationDefinition",
                modelType: ObservationDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/SubstanceSpecification": {
                url: "http://hl7.org/fhir/StructureDefinition/SubstanceSpecification",
                resourceType: "SubstanceSpecification",
                modelType: SubstanceSpecification
            },
            "http://hl7.org/fhir/StructureDefinition/Encounter": {
                url: "http://hl7.org/fhir/StructureDefinition/Encounter",
                resourceType: "Encounter",
                modelType: Encounter
            },
            "http://hl7.org/fhir/StructureDefinition/Substance": {
                url: "http://hl7.org/fhir/StructureDefinition/Substance",
                resourceType: "Substance",
                modelType: Substance
            },
            "http://hl7.org/fhir/StructureDefinition/SearchParameter": {
                url: "http://hl7.org/fhir/StructureDefinition/SearchParameter",
                resourceType: "SearchParameter",
                modelType: SearchParameter
            },
            "http://hl7.org/fhir/StructureDefinition/Communication": {
                url: "http://hl7.org/fhir/StructureDefinition/Communication",
                resourceType: "Communication",
                modelType: Communication
            },
            "http://hl7.org/fhir/StructureDefinition/InsurancePlan": {
                url: "http://hl7.org/fhir/StructureDefinition/InsurancePlan",
                resourceType: "InsurancePlan",
                modelType: InsurancePlan
            },
            "http://hl7.org/fhir/StructureDefinition/Linkage": {
                url: "http://hl7.org/fhir/StructureDefinition/Linkage",
                resourceType: "Linkage",
                modelType: Linkage
            },
            "http://hl7.org/fhir/StructureDefinition/SubstanceSourceMaterial": {
                url: "http://hl7.org/fhir/StructureDefinition/SubstanceSourceMaterial",
                resourceType: "SubstanceSourceMaterial",
                modelType: SubstanceSourceMaterial
            },
            "http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation": {
                url: "http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation",
                resourceType: "ImmunizationEvaluation",
                modelType: ImmunizationEvaluation
            },
            "http://hl7.org/fhir/StructureDefinition/DeviceUseStatement": {
                url: "http://hl7.org/fhir/StructureDefinition/DeviceUseStatement",
                resourceType: "DeviceUseStatement",
                modelType: DeviceUseStatement
            },
            "http://hl7.org/fhir/StructureDefinition/RequestGroup": {
                url: "http://hl7.org/fhir/StructureDefinition/RequestGroup",
                resourceType: "RequestGroup",
                modelType: RequestGroup
            },
            "http://hl7.org/fhir/StructureDefinition/MessageHeader": {
                url: "http://hl7.org/fhir/StructureDefinition/MessageHeader",
                resourceType: "MessageHeader",
                modelType: MessageHeader
            },
            "http://hl7.org/fhir/StructureDefinition/DeviceRequest": {
                url: "http://hl7.org/fhir/StructureDefinition/DeviceRequest",
                resourceType: "DeviceRequest",
                modelType: DeviceRequest
            },
            "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation": {
                url: "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
                resourceType: "ImmunizationRecommendation",
                modelType: ImmunizationRecommendation
            },
            "http://hl7.org/fhir/StructureDefinition/Task": {
                url: "http://hl7.org/fhir/StructureDefinition/Task",
                resourceType: "Task",
                modelType: Task
            },
            "http://hl7.org/fhir/StructureDefinition/Provenance": {
                url: "http://hl7.org/fhir/StructureDefinition/Provenance",
                resourceType: "Provenance",
                modelType: Provenance
            },
            "http://hl7.org/fhir/StructureDefinition/Questionnaire": {
                url: "http://hl7.org/fhir/StructureDefinition/Questionnaire",
                resourceType: "Questionnaire",
                modelType: Questionnaire
            },
            "http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit": {
                url: "http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit",
                resourceType: "ExplanationOfBenefit",
                modelType: ExplanationOfBenefit
            },
            "http://hl7.org/fhir/StructureDefinition/MedicinalProductPharmaceutical": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicinalProductPharmaceutical",
                resourceType: "MedicinalProductPharmaceutical",
                modelType: MedicinalProductPharmaceutical
            },
            "http://hl7.org/fhir/StructureDefinition/ResearchStudy": {
                url: "http://hl7.org/fhir/StructureDefinition/ResearchStudy",
                resourceType: "ResearchStudy",
                modelType: ResearchStudy
            },
            "http://hl7.org/fhir/StructureDefinition/Specimen": {
                url: "http://hl7.org/fhir/StructureDefinition/Specimen",
                resourceType: "Specimen",
                modelType: Specimen
            },
            "http://hl7.org/fhir/StructureDefinition/CarePlan": {
                url: "http://hl7.org/fhir/StructureDefinition/CarePlan",
                resourceType: "CarePlan",
                modelType: CarePlan
            },
            "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance": {
                url: "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
                resourceType: "AllergyIntolerance",
                modelType: AllergyIntolerance
            },
            "http://hl7.org/fhir/StructureDefinition/StructureDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/StructureDefinition",
                resourceType: "StructureDefinition",
                modelType: StructureDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/ChargeItemDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/ChargeItemDefinition",
                resourceType: "ChargeItemDefinition",
                modelType: ChargeItemDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare": {
                url: "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
                resourceType: "EpisodeOfCare",
                modelType: EpisodeOfCare
            },
            "http://hl7.org/fhir/StructureDefinition/OperationOutcome": {
                url: "http://hl7.org/fhir/StructureDefinition/OperationOutcome",
                resourceType: "OperationOutcome",
                modelType: OperationOutcome
            },
            "http://hl7.org/fhir/StructureDefinition/Procedure": {
                url: "http://hl7.org/fhir/StructureDefinition/Procedure",
                resourceType: "Procedure",
                modelType: Procedure
            },
            "http://hl7.org/fhir/StructureDefinition/List": {
                url: "http://hl7.org/fhir/StructureDefinition/List",
                resourceType: "List",
                modelType: List
            },
            "http://hl7.org/fhir/StructureDefinition/ConceptMap": {
                url: "http://hl7.org/fhir/StructureDefinition/ConceptMap",
                resourceType: "ConceptMap",
                modelType: ConceptMap
            },
            "http://hl7.org/fhir/StructureDefinition/ValueSet": {
                url: "http://hl7.org/fhir/StructureDefinition/ValueSet",
                resourceType: "ValueSet",
                modelType: ValueSet
            },
            "http://hl7.org/fhir/StructureDefinition/OperationDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/OperationDefinition",
                resourceType: "OperationDefinition",
                modelType: OperationDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/Immunization": {
                url: "http://hl7.org/fhir/StructureDefinition/Immunization",
                resourceType: "Immunization",
                modelType: Immunization
            },
            "http://hl7.org/fhir/StructureDefinition/MedicationRequest": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
                resourceType: "MedicationRequest",
                modelType: MedicationRequest
            },
            "http://hl7.org/fhir/StructureDefinition/EffectEvidenceSynthesis": {
                url: "http://hl7.org/fhir/StructureDefinition/EffectEvidenceSynthesis",
                resourceType: "EffectEvidenceSynthesis",
                modelType: EffectEvidenceSynthesis
            },
            "http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct": {
                url: "http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct",
                resourceType: "BiologicallyDerivedProduct",
                modelType: BiologicallyDerivedProduct
            },
            "http://hl7.org/fhir/StructureDefinition/Device": {
                url: "http://hl7.org/fhir/StructureDefinition/Device",
                resourceType: "Device",
                modelType: Device
            },
            "http://hl7.org/fhir/StructureDefinition/VisionPrescription": {
                url: "http://hl7.org/fhir/StructureDefinition/VisionPrescription",
                resourceType: "VisionPrescription",
                modelType: VisionPrescription
            },
            "http://hl7.org/fhir/StructureDefinition/Media": {
                url: "http://hl7.org/fhir/StructureDefinition/Media",
                resourceType: "Media",
                modelType: Media
            },
            "http://hl7.org/fhir/StructureDefinition/MedicinalProductContraindication": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicinalProductContraindication",
                resourceType: "MedicinalProductContraindication",
                modelType: MedicinalProductContraindication
            },
            "http://hl7.org/fhir/StructureDefinition/MolecularSequence": {
                url: "http://hl7.org/fhir/StructureDefinition/MolecularSequence",
                resourceType: "MolecularSequence",
                modelType: MolecularSequence
            },
            "http://hl7.org/fhir/StructureDefinition/EvidenceVariable": {
                url: "http://hl7.org/fhir/StructureDefinition/EvidenceVariable",
                resourceType: "EvidenceVariable",
                modelType: EvidenceVariable
            },
            "http://hl7.org/fhir/StructureDefinition/MedicinalProduct": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicinalProduct",
                resourceType: "MedicinalProduct",
                modelType: MedicinalProduct
            },
            "http://hl7.org/fhir/StructureDefinition/DeviceMetric": {
                url: "http://hl7.org/fhir/StructureDefinition/DeviceMetric",
                resourceType: "DeviceMetric",
                modelType: DeviceMetric
            },
            "http://hl7.org/fhir/StructureDefinition/Flag": {
                url: "http://hl7.org/fhir/StructureDefinition/Flag",
                resourceType: "Flag",
                modelType: Flag
            },
            "http://hl7.org/fhir/StructureDefinition/CodeSystem": {
                url: "http://hl7.org/fhir/StructureDefinition/CodeSystem",
                resourceType: "CodeSystem",
                modelType: CodeSystem
            },
            "http://hl7.org/fhir/StructureDefinition/SubstanceNucleicAcid": {
                url: "http://hl7.org/fhir/StructureDefinition/SubstanceNucleicAcid",
                resourceType: "SubstanceNucleicAcid",
                modelType: SubstanceNucleicAcid
            },
            "http://hl7.org/fhir/StructureDefinition/RiskEvidenceSynthesis": {
                url: "http://hl7.org/fhir/StructureDefinition/RiskEvidenceSynthesis",
                resourceType: "RiskEvidenceSynthesis",
                modelType: RiskEvidenceSynthesis
            },
            "http://hl7.org/fhir/StructureDefinition/vitalsigns": {
                url: "http://hl7.org/fhir/StructureDefinition/vitalsigns",
                resourceType: "observation-vitalsigns",
                modelType: observation_vitalsigns
            },
            "http://hl7.org/fhir/StructureDefinition/AppointmentResponse": {
                url: "http://hl7.org/fhir/StructureDefinition/AppointmentResponse",
                resourceType: "AppointmentResponse",
                modelType: AppointmentResponse
            },
            "http://hl7.org/fhir/StructureDefinition/StructureMap": {
                url: "http://hl7.org/fhir/StructureDefinition/StructureMap",
                resourceType: "StructureMap",
                modelType: StructureMap
            },
            "http://hl7.org/fhir/StructureDefinition/AdverseEvent": {
                url: "http://hl7.org/fhir/StructureDefinition/AdverseEvent",
                resourceType: "AdverseEvent",
                modelType: AdverseEvent
            },
            "http://hl7.org/fhir/StructureDefinition/GuidanceResponse": {
                url: "http://hl7.org/fhir/StructureDefinition/GuidanceResponse",
                resourceType: "GuidanceResponse",
                modelType: GuidanceResponse
            },
            "http://hl7.org/fhir/StructureDefinition/Observation": {
                url: "http://hl7.org/fhir/StructureDefinition/Observation",
                resourceType: "Observation",
                modelType: Observation
            },
            "http://hl7.org/fhir/StructureDefinition/MedicationAdministration": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
                resourceType: "MedicationAdministration",
                modelType: MedicationAdministration
            },
            "http://hl7.org/fhir/StructureDefinition/EnrollmentResponse": {
                url: "http://hl7.org/fhir/StructureDefinition/EnrollmentResponse",
                resourceType: "EnrollmentResponse",
                modelType: EnrollmentResponse
            },
            "http://hl7.org/fhir/StructureDefinition/Library": {
                url: "http://hl7.org/fhir/StructureDefinition/Library",
                resourceType: "Library",
                modelType: Library
            },
            "http://hl7.org/fhir/StructureDefinition/Binary": {
                url: "http://hl7.org/fhir/StructureDefinition/Binary",
                resourceType: "Binary",
                modelType: Binary
            },
            "http://hl7.org/fhir/StructureDefinition/MedicinalProductInteraction": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicinalProductInteraction",
                resourceType: "MedicinalProductInteraction",
                modelType: MedicinalProductInteraction
            },
            "http://hl7.org/fhir/StructureDefinition/MedicationStatement": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
                resourceType: "MedicationStatement",
                modelType: MedicationStatement
            },
            "http://hl7.org/fhir/StructureDefinition/CommunicationRequest": {
                url: "http://hl7.org/fhir/StructureDefinition/CommunicationRequest",
                resourceType: "CommunicationRequest",
                modelType: CommunicationRequest
            },
            "http://hl7.org/fhir/StructureDefinition/TestScript": {
                url: "http://hl7.org/fhir/StructureDefinition/TestScript",
                resourceType: "TestScript",
                modelType: TestScript
            },
            "http://hl7.org/fhir/StructureDefinition/SubstancePolymer": {
                url: "http://hl7.org/fhir/StructureDefinition/SubstancePolymer",
                resourceType: "SubstancePolymer",
                modelType: SubstancePolymer
            },
            "http://hl7.org/fhir/StructureDefinition/Basic": {
                url: "http://hl7.org/fhir/StructureDefinition/Basic",
                resourceType: "Basic",
                modelType: Basic
            },
            "http://hl7.org/fhir/StructureDefinition/TestReport": {
                url: "http://hl7.org/fhir/StructureDefinition/TestReport",
                resourceType: "TestReport",
                modelType: TestReport
            },
            "http://hl7.org/fhir/StructureDefinition/ClaimResponse": {
                url: "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
                resourceType: "ClaimResponse",
                modelType: ClaimResponse
            },
            "http://hl7.org/fhir/StructureDefinition/MedicationDispense": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
                resourceType: "MedicationDispense",
                modelType: MedicationDispense
            },
            "http://hl7.org/fhir/StructureDefinition/DiagnosticReport": {
                url: "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
                resourceType: "DiagnosticReport",
                modelType: DiagnosticReport
            },
            "http://hl7.org/fhir/StructureDefinition/OrganizationAffiliation": {
                url: "http://hl7.org/fhir/StructureDefinition/OrganizationAffiliation",
                resourceType: "OrganizationAffiliation",
                modelType: OrganizationAffiliation
            },
            "http://hl7.org/fhir/StructureDefinition/HealthcareService": {
                url: "http://hl7.org/fhir/StructureDefinition/HealthcareService",
                resourceType: "HealthcareService",
                modelType: HealthcareService
            },
            "http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication",
                resourceType: "MedicinalProductIndication",
                modelType: MedicinalProductIndication
            },
            "http://hl7.org/fhir/StructureDefinition/NutritionOrder": {
                url: "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
                resourceType: "NutritionOrder",
                modelType: NutritionOrder
            },
            "http://hl7.org/fhir/StructureDefinition/TerminologyCapabilities": {
                url: "http://hl7.org/fhir/StructureDefinition/TerminologyCapabilities",
                resourceType: "TerminologyCapabilities",
                modelType: TerminologyCapabilities
            },
            "http://hl7.org/fhir/StructureDefinition/Evidence": {
                url: "http://hl7.org/fhir/StructureDefinition/Evidence",
                resourceType: "Evidence",
                modelType: Evidence
            },
            "http://hl7.org/fhir/StructureDefinition/AuditEvent": {
                url: "http://hl7.org/fhir/StructureDefinition/AuditEvent",
                resourceType: "AuditEvent",
                modelType: AuditEvent
            },
            "http://hl7.org/fhir/StructureDefinition/PaymentReconciliation": {
                url: "http://hl7.org/fhir/StructureDefinition/PaymentReconciliation",
                resourceType: "PaymentReconciliation",
                modelType: PaymentReconciliation
            },
            "http://hl7.org/fhir/StructureDefinition/Condition": {
                url: "http://hl7.org/fhir/StructureDefinition/Condition",
                resourceType: "Condition",
                modelType: Condition
            },
            "http://hl7.org/fhir/StructureDefinition/SpecimenDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/SpecimenDefinition",
                resourceType: "SpecimenDefinition",
                modelType: SpecimenDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/Composition": {
                url: "http://hl7.org/fhir/StructureDefinition/Composition",
                resourceType: "Composition",
                modelType: Composition
            },
            "http://hl7.org/fhir/StructureDefinition/DetectedIssue": {
                url: "http://hl7.org/fhir/StructureDefinition/DetectedIssue",
                resourceType: "DetectedIssue",
                modelType: DetectedIssue
            },
            "http://hl7.org/fhir/StructureDefinition/CompartmentDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/CompartmentDefinition",
                resourceType: "CompartmentDefinition",
                modelType: CompartmentDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/MedicinalProductIngredient": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicinalProductIngredient",
                resourceType: "MedicinalProductIngredient",
                modelType: MedicinalProductIngredient
            },
            "http://hl7.org/fhir/StructureDefinition/MedicationKnowledge": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicationKnowledge",
                resourceType: "MedicationKnowledge",
                modelType: MedicationKnowledge
            },
            "http://hl7.org/fhir/StructureDefinition/Patient": {
                url: "http://hl7.org/fhir/StructureDefinition/Patient",
                resourceType: "Patient",
                modelType: Patient
            },
            "http://hl7.org/fhir/StructureDefinition/Coverage": {
                url: "http://hl7.org/fhir/StructureDefinition/Coverage",
                resourceType: "Coverage",
                modelType: Coverage
            },
            "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse": {
                url: "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
                resourceType: "QuestionnaireResponse",
                modelType: QuestionnaireResponse
            },
            "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest": {
                url: "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest",
                resourceType: "CoverageEligibilityRequest",
                modelType: CoverageEligibilityRequest
            },
            "http://hl7.org/fhir/StructureDefinition/NamingSystem": {
                url: "http://hl7.org/fhir/StructureDefinition/NamingSystem",
                resourceType: "NamingSystem",
                modelType: NamingSystem
            },
            "http://hl7.org/fhir/StructureDefinition/MedicinalProductUndesirableEffect": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicinalProductUndesirableEffect",
                resourceType: "MedicinalProductUndesirableEffect",
                modelType: MedicinalProductUndesirableEffect
            },
            "http://hl7.org/fhir/StructureDefinition/ExampleScenario": {
                url: "http://hl7.org/fhir/StructureDefinition/ExampleScenario",
                resourceType: "ExampleScenario",
                modelType: ExampleScenario
            },
            "http://hl7.org/fhir/StructureDefinition/SupplyDelivery": {
                url: "http://hl7.org/fhir/StructureDefinition/SupplyDelivery",
                resourceType: "SupplyDelivery",
                modelType: SupplyDelivery
            },
            "http://hl7.org/fhir/StructureDefinition/Schedule": {
                url: "http://hl7.org/fhir/StructureDefinition/Schedule",
                resourceType: "Schedule",
                modelType: Schedule
            },
            "http://hl7.org/fhir/StructureDefinition/DeviceDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/DeviceDefinition",
                resourceType: "DeviceDefinition",
                modelType: DeviceDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/ClinicalImpression": {
                url: "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
                resourceType: "ClinicalImpression",
                modelType: ClinicalImpression
            },
            "http://hl7.org/fhir/StructureDefinition/PlanDefinition": {
                url: "http://hl7.org/fhir/StructureDefinition/PlanDefinition",
                resourceType: "PlanDefinition",
                modelType: PlanDefinition
            },
            "http://hl7.org/fhir/StructureDefinition/MedicinalProductAuthorization": {
                url: "http://hl7.org/fhir/StructureDefinition/MedicinalProductAuthorization",
                resourceType: "MedicinalProductAuthorization",
                modelType: MedicinalProductAuthorization
            },
            "http://hl7.org/fhir/StructureDefinition/Claim": {
                url: "http://hl7.org/fhir/StructureDefinition/Claim",
                resourceType: "Claim",
                modelType: Claim
            },
            "http://hl7.org/fhir/StructureDefinition/Location": {
                url: "http://hl7.org/fhir/StructureDefinition/Location",
                resourceType: "Location",
                modelType: Location
            }
        },
        searchParameters: [BASE_IG_SEARCH_PARAMS_1, BASE_IG_SEARCH_PARAMS_2, BASE_IG_SEARCH_PARAMS_3, BASE_IG_SEARCH_PARAMS_4, BASE_IG_SEARCH_PARAMS_5]
    };
    FHIRImplementationGuide baseImplementationGuide = new (baseIgRecord);
    check fhirRegistry.addImplementationGuide(baseImplementationGuide);

    log:printDebug("FHIR R4 Module initialized.");
}
