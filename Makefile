BAZEL=bazel
MAIN_APP=//Prozer:Prozer
APP_NAME=Prozer

BAZEL_OPTS=--apple_platform_type=ios

.PHONY : fetch build test run bootstrap kill_xcode project clean

build:
	$(BAZEL) build $(MAIN_APP) $(BAZEL_OPTS)

test:
	$(BAZEL) test :* $(BAZEL_OPTS)

run:
	$(BAZEL) run $(MAIN_APP) $(BAZEL_OPTS)

bootstrap: fetch build test run
	echo "Done"

app_graph:
	$(BAZEL) query --noimplicit_deps --notool_deps 'deps($(MAIN_APP))' --output graph | dot -Tpng > graph.png


fetch: info
	carthage update --platform iOS --use-xcframeworks --cache-builds
	$(BAZEL) fetch :*

dep_graph:
	$(BAZEL) query --noimplicit_deps --notool_deps 'deps(//Vendor/$(dependency):$(dependency))'


clean: kill_xcode
	rm -rf **/*.xcworkspace
	rm -rf **/*.xcodeproj
	$(BAZEL) clean

project: kill_xcode
	scripts/tulsigen $(APP_NAME).tulsiproj Develop

kill_xcode:
	killall Xcode || true
	killall Simulator || true

info:
	$(BAZEL) info