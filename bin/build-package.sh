#!/usr/bin/env bash

#export JAVA_HOME=`pwd`/build/java-runtime
export JAVA_HOME=/opt/adoptopenjdk/jdk-11+28/Contents/Home/

${HOME}/Software/jpackager-11/jpackager \
  create-image \
  --module-path ${HOME}/java-modules/javafx-jmods-11/ \
  --verbose \
  --echo-mode \
  --add-modules java.base,java.datatransfer,java.desktop,java.scripting,java.xml,jdk.jsobject,jdk.unsupported,jdk.unsupported.desktop,jdk.xml.dom,javafx.controls \
  --input ${HOME}/Documents/IntelliJ/jfx11-test/build/libs \
  --output build/bundle \
  --name AppName \
  --main-jar jfx11-test.jar \
  --class HelloFX
