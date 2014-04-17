@triangles
Feature: Myers Triangle
In order to remember my high school maths
As a maths student
I want a function that tells me the type of triangle given the lengths of the sides

Business Rules:
  * We are not concerned about right angled triangles at the moment
  * Types of triangle are:
  	* Equilateral - All sides are the same
  	* Isosceles - Two sides are the same
  	* Scalene - All sides are different
  	
  * If the sum of two sides is less than or equal to the other side Not a triangle is returned

@smoke
Scenario: Triangle type should be equilateral when sides are equal
	When the sides are 3,3,3
	Then the type of triangle is "Equilateral"
  	
Scenario Outline: Triangle type depeneds on the lengths of the sides
	When the sides are <a>,<b>,<c>
	Then the type of triangle is "<type>"
	Examples:
	| a | b | c | type			|
	| 2 | 2 | 2 | Equilateral	|
	| 2 | 2 | 1 | Isosceles		|
	| 1 | 2 | 2 | Isosceles		|
	| 2 | 1 | 2 | Isosceles		|
	| 2 | 3 | 4 | Scalene		|
	| 0 | 2 | 2 | Not a triangle|
	| 1 | 9 | 2 | Not a triangle|
	| 0 | 0 | 0 | Not a triangle|
	
Scenario: Triangle is right angled when pythagoras is correct
	When the sides are 3,4,5
	Then the triangle is right angled	
		




 
  	