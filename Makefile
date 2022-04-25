BAZEL=bazel
MAIN_APP=//App:BazelApp
APP_NAME=Prozer
CARTHAGE =./sync.sh
BAZEL_OPTS=--apple_platform_type=ios

.PHONY : fetch build test run bootstrap kill_xcode project clean

build:
	$(BAZEL) build $(MAIN_APP) $(BAZEL_OPTS) --define scheme=release

test:
	$(BAZEL) test :* $(BAZEL_OPTS) --define scheme=develop

run:
	$(BAZEL) run $(MAIN_APP) $(BAZEL_OPTS) --define scheme=release

bootstrap: fetch build test run
	echo "Done"

app_graph:
	$(BAZEL) query --noimplicit_deps --notool_deps --graph:node_limit=1 --graph:conditional_edges_limit=1 'deps($(MAIN_APP))' --output graph | dot -Tpng > graph.png


fetch: info
	bazel run @rules_pods//:update_pods -- --src_root ${PWD};

dep_graph:
	$(BAZEL) query --noimplicit_deps --notool_deps 'deps(//Vendor/$(dependency):$(dependency))'


clean: kill_xcode
	rm -rf **/*.xcworkspace
	rm -rf **/*.xcodeproj
	$(BAZEL) clean

project: kill_xcode
	scripts/tulsigen $(APP_NAME).tulsiproj dev
	xed .

kill_xcode:
	killall Xcode || true
	killall Simulator || true

info:
	$(BAZEL) info

create_module:
	sh ./templates/create_module.sh
