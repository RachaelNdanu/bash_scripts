#!/bin/bash

# Prompt the user for their monthly gross salary
echo -n "Please enter your monthly gross salary: "
read gross_salary

# Prompt the user for the tax rate in percentage
echo -n "Please enter your tax rate (in percentage form): "
read tax_rate

# Calculate the monthly net salary
# Formula: monthly net salary = gross salary - (gross salary * tax rate / 100)
monthly_net_salary=$(echo "scale=2; $gross_salary - ($gross_salary * $tax_rate / 100)" | bc -l)

# Calculate the total net annual salary (12 months)
total_net_annual_salary=$(echo "scale=2; $monthly_net_salary * 12" | bc -l)

# Output the total net annual salary
echo "Your total net annual salary is equal to: $total_net_annual_salary"
