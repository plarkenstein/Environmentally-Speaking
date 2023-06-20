#include <stdio.h>
#include <string.h>

/*
 * This program prints out a message about the environment
 */
 
// Define a constant
#define MESSAGE "Environmentally Speaking"
 
// Declare a function
void printMessage();
 
int main()
{
  // Define and initialize variables
  char myName[50] = "John Doe";
  char myStatement[250] = "We all need to do our part to protect the planet";
 
  // Call the function
  printMessage();
 
  // Print the parameters
  printf("My name is %s and %s\n", myName, myStatement);
 
  return 0;
}

// Define a function
void printMessage()
{
  int i;
  
  for (i = 0; i < 1000; i++) {
	printf("%s\n", MESSAGE);
  }
  
}