include shared-makefiles/gitignore.mk
include shared-makefiles/help.mk

################################################################################
# 変数
################################################################################
DOCKERHUB_USERNAME := dummy-user
DOCKERHUB_PASSWORD := dummy-pass
DOCKER_REPOSITORY  := sunakan/debian

################################################################################
# タスク
################################################################################
.PHONY: docker-login
docker-login:
	@echo $(DOCKERHUB_PASSWORD) | docker login --username $(DOCKERHUB_USERNAME) --password-stdin

.PHONY: build-wheezy-slim
build-wheezy-slim:
	@docker build ./ \
		--file 07-wheezy-slim/Dockerfile \
		--tag $(DOCKER_REPOSITORY):wheezy-slim

.PHONY: push-wheezy-slim
push-wheezy-slim:
	@docker push $(DOCKER_REPOSITORY):wheezy-slim

.PHONY: build-jessie-slim
build-jessie-slim:
	@docker build ./ \
		--file 08-jessie-slim/Dockerfile \
		--tag $(DOCKER_REPOSITORY):jessie-slim

.PHONY: push-jessie-slim
push-jessie-slim:
	@docker push $(DOCKER_REPOSITORY):jessie-slim
