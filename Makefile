BAZEL=bazel
MAIN_APP=//Prozer:Prozer
APP_NAME=Prozer

.PHONY :  pods build test run bootstrap kill_xcode project clean

build:
	$(BAZEL) build $(MAIN_APP)

test:
	$(BAZEL) test //...

run:
	$(BAZEL) run $(MAIN_APP)

bootstrap: pods build test run
	echo "Done"

app_graph:
	$(BAZEL) query --noimplicit_deps --notool_deps 'deps($(MAIN_APP))' --output graph | dot -Tpng > graph.png

pods:
	$(BAZEL) run @rules_pods//:update_pods -- --src_root $(PWD)

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

project: kill_xcode
	scripts/tulsigen $(APP_NAME).tulsiproj Develop