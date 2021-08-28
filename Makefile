.PHONY: run build-runner install

run:
	flutter run -d chrome --web-port=4040 --web-renderer=html

build-runner:
	flutter pub run build_runner build

install:
	flutter pub get