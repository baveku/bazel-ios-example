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

# Fetch vendored pods if there's a Pods.WORKSPACE. In normal operation it isn't
# expected to run `update_pods` along with a build.
#
# Generally, this would be ran when dependencies are updated, and then,
# dependencies _would_ be checked in.
vendorize:
	$(BAZEL) run @rules_pods//:update_pods $(BAZEL_OPTS) -- --src_root $(PWD)

fetch: info
	[[ ! -f Pods.WORKSPACE ]] || $(MAKE) vendorize
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