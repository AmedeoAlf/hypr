#!/usr/bin/env python3
import os
import sys
import time
import subprocess


def lerp(a: float, b: float, t: float) -> float:
    return (1 - t) * a + t * b


if len(sys.argv) > 1 and (sys.argv[1] == "-h" or sys.argv[1] == "--help"):
    print(f"{sys.argv[0]} [DURATION_SEC] [FINAL_ZOOM]")
    exit(0)

CURRENT_ZOOM = subprocess.check_output(
    "hyprctl getoption cursor:zoom_factor",
    shell=True
).splitlines()[0].decode("UTF-8")

DURATION = float(sys.argv[1]) if len(sys.argv) > 1 else 1.0
FROM = float(str(CURRENT_ZOOM).removeprefix("float: "))
TO = float(sys.argv[2]) if len(sys.argv) > 2 else FROM * 2

startTime = time.time()
while True:
    currTime = time.time() - startTime
    if currTime > DURATION:
        break

    currValue = lerp(FROM, TO, currTime/DURATION)
    os.system(f"hyprctl keyword cursor:zoom_factor {currValue}")

os.system(f"hyprctl keyword cursor:zoom_factor {TO}")
