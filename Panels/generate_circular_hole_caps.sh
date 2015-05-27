#!/bin/bash
for i in {5..40}
do
    echo "Compiling cap for ${i}mm hole"
    openscad -D hole_diameter=${i} circular_hole_cap.scad -o stl/circular_hole_cap_${i}mm.stl
done
