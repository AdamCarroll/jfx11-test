#!/usr/bin/env bash

export OUTPUT_DIR=build/java-runtime

rm -Rf ${OUTPUT_DIR}

jlink --module-path ${HOME}/java-modules/javafx-jmods-11/ \
  --no-header-files \
  --no-man-pages \
  --compress=2 \
  --strip-debug \
  --add-modules java.base,java.datatransfer,java.desktop,java.scripting,java.xml,jdk.jsobject,jdk.unsupported,jdk.unsupported.desktop,jdk.xml.dom,javafx.controls,java.logging,jdk.jlink \
  --output ${OUTPUT_DIR}

touch ${OUTPUT_DIR}/bin/javac
chmod +x ${OUTPUT_DIR}/bin/javac
