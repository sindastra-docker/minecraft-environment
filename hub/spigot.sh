#!/bin/sh

cd mount
java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Xms2G -Xmx2G -XX:+UseConcMarkSweepGC -jar spigot.jar "$@" nogui
