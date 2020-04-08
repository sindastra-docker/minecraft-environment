#!/bin/sh

cd mount
java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Xmx2G -Xms2G -jar minecraft_server.jar "$@" nogui
