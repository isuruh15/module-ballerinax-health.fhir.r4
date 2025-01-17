Ballerina FHIR R4 Packages
==========================

The Ballerina FHIR R4 packages include FHIR R4 data types, FHIR resource types as specified in commonly used Implementation Guides (IGs), parsers and serializers for FHIR resources, FHIR service type as well as miscellaneous utilities for creating, accessing, and manipulating FHIR resources.

**Note:**
**This package only supports FHIR JSON payload format only. FHIR XML payload support will be added soon.**

For more information, go to the module(s).
- [health.fhir.r4](base/Module.md)
- [health.fhir.r4.uscore](uscore501/Module.md)
- [health.fhir.r4.aubase](aubase410/Module.md)
- [health.fhirr4](fhirr4/ballerina/src/main/resources/fhirservice/Package.md)

## Building from the source

### Setting up the prerequisites

1. Download and install Java SE Development Kit (JDK) version 11. You can install either [OpenJDK](https://adoptopenjdk.net/) or [Oracle](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html).

    > **Note:** Set the JAVA_HOME environment variable to the path name of the directory into which you installed JDK.

2. Download and install [Ballerina Swan Lake](https://ballerina.io/). 

### Building the source

Execute the commands below to build from the source.

- To build the package (eg - to build the uscore package):
    ```shell
    bal pack ./uscore501
    ```
- To build the FHIR service:
    Navigate to `fhirr4` and run the following command
    ```shell
    mvn clean install
    ```

## Contributing to Ballerina

As an open source project, Ballerina welcomes contributions from the community. 

For more information, go to the [contribution guidelines](https://github.com/ballerina-platform/ballerina-lang/blob/master/CONTRIBUTING.md).

## Code of conduct

All the contributors are encouraged to read the [Ballerina Code of Conduct](https://ballerina.io/code-of-conduct).

## Useful links

* Discuss the code changes of the Ballerina project in [ballerina-dev@googlegroups.com](mailto:ballerina-dev@googlegroups.com).
* Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
* Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
