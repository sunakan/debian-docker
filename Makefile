include shared-makefiles/gitignore.mk
include shared-makefiles/help.mk

################################################################################
# 変数
################################################################################
DOCKER_REPOSITORY := sunakan/debian

################################################################################
# タスク
################################################################################
.PHONY: build-wheezy-slim
build-wheezy-slim:
	docker build ./ \
		--file 07-wheezy-slim/Dockerfile \
		--tag $(DOCKER_REPOSITORY):wheezy-slim
