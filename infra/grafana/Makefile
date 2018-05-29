.PHONY:	build push publish

PREFIX = joway
# PREFIX = docker.xxx.com
IMAGE = grafana
TAG = 4.2.0

build:
	docker build \
		--build-arg DOWNLOAD_URL=https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana_${TAG}_amd64.deb \
		--tag "$(PREFIX)/$(IMAGE):${TAG}" .

push:
	docker push $(PREFIX)/$(IMAGE):$(TAG)

latest:
	docker tag $(PREFIX)/$(IMAGE):${TAG} $(PREFIX)/$(IMAGE):latest
	docker push $(PREFIX)/$(IMAGE):latest
