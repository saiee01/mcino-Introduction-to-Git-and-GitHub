#!/bin/bash
# This script calculates simple interest given principal, annual rate of interest and time period in years.

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

# Output:
# simple interest = p*t*r


#!/bin/bash

echo "Enter the principal amount:"
read -r principal

echo "Enter the annual rate of interest (%):"
read -r rate

echo "Enter the time period in years:"
read -r time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
  'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest: $interest"
