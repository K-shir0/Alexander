.PHONY: run build install

run:
	flutter run -d chrome --web-port=4040 --web-renderer=html

build:
	flutter pub run build_runner build

install:
	flutter pub get