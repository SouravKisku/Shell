#!/bin/bash

# Read length and breadth from user
echo "Enter length of rectangle: "
read length
echo "Enter breadth of rectangle: "
read breadth

# Calculate area
area=$(( length * breadth ))

# Calculate perimeter
perimeter=$(( 2 * (length + breadth) ))

# Display results
echo "Area of rectangle: $area"
echo "Perimeter of rectangle: $perimeter"