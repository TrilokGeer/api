all: build
.PHONY: all

build:
	go build github.com/openshift/api/authorization/...
	go build github.com/openshift/api/apps/...
	go build github.com/openshift/api/build/...
	go build github.com/openshift/api/image/...
	go build github.com/openshift/api/network/...
	go build github.com/openshift/api/oauth/...
	go build github.com/openshift/api/project/...
	go build github.com/openshift/api/quota/...
	go build github.com/openshift/api/route/...
	go build github.com/openshift/api/security/...
	go build github.com/openshift/api/template/...
	go build github.com/openshift/api/user/...
.PHONY: build

verify:
	hack/verify-deepcopy.sh
	hack/verify-protobuf.sh
	hack/verify-swagger-docs.sh
.PHONY: verify

clean:
	rm -rf _output
.PHONY: clean

update-deps:
	hack/update-deps.sh
.PHONY: update-deps

generate:
	hack/update-deepcopy.sh
	hack/update-protobuf.sh
	hack/update-swagger-docs.sh
.PHONY: generate
