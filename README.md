# iOS Bazel Project

-   Sample app using Carthage + Bazel

## Install Dependencies

-   Step 1: Install bazel:

        brew install bazel

-   Step 2: Install Carthage:

        brew install carthage

    -   Generate App Graph(Optional):

            brew install graphviz

-   Step 3: using Make to build App
    -   Sync deps:
        
			make fetch

    -   Build App:
        
			make build

## Dependencies graph

![alt text](graph.png "App Graph")

# Make script

## Create Module

	make create_module
