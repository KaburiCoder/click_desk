build:
	flutter build appbundle
watch:
	dart run build_runner watch -d
watch2:
	dart run build_runner watch -d --delete-conflicting-outputs