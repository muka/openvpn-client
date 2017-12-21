.PHONY: build push run build-armhf push-armhf

build:
	docker build . -t opny/openvpn-client

push: build
	docker push opny/openvpn-client

build-armhf:
	docker build . -f Dockerfile.armhf -t opny/openvpn-client-armhf

push-armhf: build-armhf
	docker push opny/openvpn-client-armhf

run:
	docker run -ti --rm  --name openvpn-client -v `pwd`/vpn:/vpn opny/openvpn-client  $@
