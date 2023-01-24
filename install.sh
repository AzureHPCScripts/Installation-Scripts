#Installation script for Altair acusolve application
# --------------------------------------------------------------


#!/bin/bash -v
set -e


#Setting the Local variables for installation

#PACKAGE means the name of the Executable package you have downloaded to install and the input for this is given as an 1st argument while running the script.

PACKAGE="$1"

#PACKAGE_DIR refers to the directory where the Package is downloaded or stored and the input for this is given as an 2nd argument while running the script.

PACKAGE_DIR="$2"

#Property_Filename refers to name of the user property file and the input for this is given as an 3rd argument while running the script.

Property_Filename="$3"


#changing working directory to package directory

cd $PACKAGE_DIR

#Installing the Altair acusolve application by using the property response file in silent mode

echo "Acuosolve application Installation has been started"

./$PACKAGE -i silent -f "$PACKAGE_DIR/$Property_Filename" -DACCEPT_EULA=YES

echo "Altair Acusolve apllication has been installed succeessfully"
