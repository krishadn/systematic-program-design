# Systematic Program Design

This repository includes all the programs I have developed using BSL (an introductory language for Lisp) while taking [Systematic Program Design](https://learning.edx.org/course/course-v1:UBCx+SPD1x+2T2015) course by UBC available from Edx.

I took this course as part of [OSSU curriculum for Computer Science](https://github.com/ossu/computer-science).

## Cool Stuff I did:

### 1. Simple Calculator

Created the project to showcase understanding of function design, data design (including using compound data), world design. This covered the lessons learned from 1a BSL to 3b Compound Data  

![Calculator UI](images/calc1.png)
![Addition Operation](images/calc2.png)
![Addition Result](images/calc3.png)


**Designed world**

To create the world, I first conducted domain analysis which resulted to a list of constants, variables, and UI functions to use.

![Domain Analysis](images/calc8.png)


**Designed data**

Based on the domain analysis, I designed the data that will represent real-world entities in the program. This includes operators and values. This is to make the data well-defined within the program and to provide the template for functions that use these data types for a data-driven design.

![Domain Analysis](images/calc9.png)


**Used compound data**

For this project, I created 2 compound data:
- Equation - represents an equation with 2 operands, 1 operator and the result of operation
- Boundaries - represents button outline boundaries which is necessary for checking what buttons were clicked

![Compound Data](images/calc4.png)


**Designed function**

To design the functions, I first laid out the purpose and stub. And then I listed enough examples that covers usual cases, edge cases, and corner cases. These examples were also used to create testing for the functions.

![Function Design1](images/calc5.png)

Aside from the big-bang functions to control the user interface, I have also created helper functions to break down tasks into independent manageable chunks, to follow the best practice that functions should only do one thing.

![Function Design2](images/calc6.png)
![Function Design3](images/calc7.png)

**Limitations**

- Does not support decimal input. Workaround is to use division and addition to get the desired decimal value.

![Limitation](images/calc10.png)

### 2. Implementation of Natural Numbers

To really understand how powerful self-reference and recursion are, the course made us create our own implementation of Natural numbers. To create this, we used the List mechanism of BSL and data definition with self-reference. Naturally (pun-intended), this would result to a natural recursion in the function template.

![Natural Data Definition](images/natural1.png)

The course helped me create functions that operate on this custom Natural number such as ADD, SUB, TIMES, and FACT.

![Natural Addition](images/natural2.png)
![Natural Subtraction](images/natural9.png)
![Natural Multiplication](images/natural3.png)
![Natural Factorial](images/natural4.png)


And then, I implemented some other functions
- DIV: to check how many times a NATURAL "b" can be subtracted from another NATURAL "a", where b > ZERO
- EQUALS?: produce true if two NATURALS have the same count of "!"
- LESS-THAN?: produce true if the a has less count of '!' than b
- GREATER-THAN?: produce true if the a has greater count of '!' than b

![Natural Division](images/natural5.png)
![Natural Equals](images/natural6.png)
![Natural Less than](images/natural7.png)
![Natural Greater than](images/natural8.png)


