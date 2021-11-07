#!/bin/bash

############################################################
# Create Module                                            #
############################################################
SelectOptions() {
	# Display Help
	echo "Create module with options:"
	echo "1     Swift only Sources"
	echo "2     Embedded Unit Test"
	echo "3     None"
	echo "----------------------------"
}

############################################################
############################################################
# Main program                                             #
############################################################
############################################################
# Process the input options. Add options as needed.        #
############################################################
# Get the options
SelectOptions
read -n 1 -p "1. Select template(default=1): " mainmenuinput
echo ""
MODULE_NAME=""
TEMPLATE_PATH=""
SUBMODULE_PATH=""

CopyTemplate() {
	mkdir -p $SUBMODULE_PATH
	cp -r $TEMPLATE_PATH/. $SUBMODULE_PATH
}

RenameTemplate() {
	echo "-----Initializing...-----\n"
	file_regex="s/__MODULE_NAME__/${MODULE_NAME}/g"
	find ${PWD}/Submodules/${MODULE_NAME} -type f -name "*" | while read txt; do
		sed -i '' "s/__MODULE_NAME__/${MODULE_NAME}/" $txt
		rename $file_regex $txt
	done
}

DoneMessage() {
	echo "Created Module ${MODULE_NAME} in path: ${PWD}/submodules/${MODULE_NAME}"
}

HandleSelected() {
	val=""
	printf '2. Your Module Name:'
	echo -n "$val"
	while read -n 1 char; do
		if [[ $char = "" ]]; then
			# do whatever else you want with it here
			MODULE_NAME=$val # reset it to get the next param
			break
		else
			val="$val$char" # append input
		fi
	done
	echo "New Module ${MODULE_NAME} is creating...\n"
	SUBMODULE_PATH="${PWD}/Submodules/${MODULE_NAME}"
	unitest_path="${PWD}/templates/UnitTestSubModule"
	normal_path="${PWD}/templates/SwiftNormalModule"
	none_path="${PWD}/templates/NoneModule"
	if [ "$mainmenuinput" = "2" ]; then
		TEMPLATE_PATH=$unitest_path
	elif [ "$mainmenuinput" = "3" ]; then
		TEMPLATE_PATH=$none_path
	else
		TEMPLATE_PATH=$normal_path
	fi
	CopyTemplate
	RenameTemplate
	DoneMessage
}
HandleSelected
