ifeq ($(OS),Windows_NT)
    COPY_CMD_DIST := xcopy /E /Y /I dist\* ..\docs\ 
	OS_NAME := Windows
else
    COPY_CMD_DIST := cp -r dist/* ../docs/ ^
	OS_NAME := $(shell uname)
endif

all: dev

pre:
	@echo "Building for $(OS_NAME)"

build:
	cd react-app && \
	npm run build && \
	$(COPY_CMD_DIST)

dev:
	cd react-app && \
	npm run dev
