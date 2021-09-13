BAZEL=bazel
MAIN_APP=//Prozer:Prozer

build:
	$(BAZEL) build $(MAIN_APP)

app_graph:
	$(BAZEL) query --noimplicit_deps --notool_deps 'deps($(MAIN_APP))' --output graph | dot -Tpng > graph.png

pods:
	$(BAZEL) run @rules_pods//:update_pods -- --src_root $(PWD)

gen_xcproj:
	sh ./tools/generate_xcodeproj.sh

dep_graph:
	$(BAZEL) query --noimplicit_deps --notool_deps 'deps(//Vendor/$(dependency):$(dependency))'