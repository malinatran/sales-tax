## Problem Two: Sales Taxes
### ThoughtWorks Coding Challenge
**Malina Tran**

**Objective**

Craft a functional solution, using Java or C#, that demonstrates coding, problem-solving, and object-oriented programming skills

**Approach**

My solution has undergone several iterations. First, I created a script that would read a file and print a receipt with the sales taxes and total price. Second, I refactored the code to be more robust and reflective of OOP methodology by creating classes (item, line parser, receipt, receipt formatter, and cash register) and assigning them properties and methods. I originally wrote the code in Ruby, which can be found in the folder 'ruby_solution', and used RSpec for unit testing. Third, I learned Java in order to translate my code and therefore meet the coding challenge's programming language criterion (folder 'java_solution'). Both the Ruby and Java solutions correspond with the other's structure.

**Design & Assumptions**
* Cash Register: The purpose of this function is to accept input and use a method to add each line to construct a receipt. This is the entry point of the code.
* Line Parser: This class includes a method called `parse_line` (Ruby) or `parseLine` (Java) that will parse a string (e.g. "1 chocolate bar at 0.85") and create a new item object based on the information extracted from the string.
* Item: The Item class will determine whether the item is exempt, calculate sales and import taxes, and appropriately round up the tax to the nearest five cents.
* Receipt: The Receipt class is responsible for determining the total taxes and total price for a group of items.
* Receipt Formatter: The Receipt Formatter creates a string that represents a receipt in an easily-readable format.

**Instructions**

Java: 
1) Compile CashRegister.java by running `javac CashRegister.java`
2) Run `java CashRegister`. The program accepts input through stdin.

Ruby: 
1) Run `ruby cash_register.rb`. 
2) If you'd like to run tests, `gem install rspec` and run `rspec spec`. 