#!/bin/sh

cd mount
java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Xms${MCRAM} -Xmx${MCRAM} -XX:+UseConcMarkSweepGC -jar spigot.jar "$@" --nogui
