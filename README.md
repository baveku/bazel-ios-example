# iOS Bazel Project

-   Sample app using Carthage + Bazel

## sample using bazel + PODToBuild

-   Step 1: Install bazel:
    brew install bazel
-   Step 2: Install Carthage:
    brew install carthage

    -   Generate App Graph(Optional):

            brew install graphviz

-   Step 3: using Make to build App
    -   Sync deps:
        ```bash
        make fetch
        ```
    -   Build App:
        ```bash
        make build
        ```

## Dependencies graph

![alt text](graph.png "App Graph")
