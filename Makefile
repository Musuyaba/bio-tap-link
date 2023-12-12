build:
	cd react-app && \
	npm run build && \
	xcopy /E /Y dist\* ..\docs\