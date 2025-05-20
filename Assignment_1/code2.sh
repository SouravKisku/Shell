#!/bin/bash

# Read basic salary from user
echo "Enter basic salary: "
read basic_salary

# Calculate allowances
da=$(( basic_salary * 40 / 100 ))    # Dearness Allowance (40%)
hra=$(( basic_salary * 20 / 100 ))   # House Rent Allowance (20%)
ta=$(( basic_salary * 10 / 100 ))    # Travel Allowance (10%)

# Calculate deductions
pf=$(( basic_salary * 12 / 100 ))    # Provident Fund (12%)
tax=$(( basic_salary * 5 / 100 ))    # Tax (5%)

# Calculate gross and net salary
gross_salary=$(( basic_salary + da + hra + ta ))
total_deductions=$(( pf + tax ))
net_salary=$(( gross_salary - total_deductions ))

# Display salary slip
echo "=================== SALARY SLIP ==================="
echo "Basic Salary    : $basic_salary"
echo "-------------------------------------------------"
echo "Allowances:"
echo "DA (40%)        : $da"
echo "HRA (20%)       : $hra"
echo "TA (10%)        : $ta"
echo "-------------------------------------------------"
echo "Gross Salary    : $gross_salary"
echo "-------------------------------------------------"
echo "Deductions:"
echo "PF (12%)        : $pf"
echo "Tax (5%)        : $tax"
echo "Total Deductions: $total_deductions"
echo "-------------------------------------------------"
echo "Net Salary      : $net_salary"
echo "================================================="