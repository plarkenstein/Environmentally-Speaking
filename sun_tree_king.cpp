#include <iostream> 
#include <string> 

using namespace std; 

// Global Variables 
int temperature = 0; 
string location = "";

// Function Prototypes 
void displayCurrentTemperature();
void displayLocation();
void calculateTemperature();

// Main Function 
int main() 
{
	// Introduction to the program
	cout << "Welcome to Environmentally Speaking! " << endl; 
	cout << "This program will help you calculate the temperature in your current location. " << endl; 

	// Prompt user to enter location 
	cout << "Please enter your location: ";
	cin >> location; 
	cout << endl; 

	// Calculate temperature
	calculateTemperature(); 

	// Display Temperature and Location
	displayCurrentTemperature();
	displayLocation(); 

	// Goodbye Message 
	cout << endl; 
	cout << "Goodbye! See you again soon! " << endl; 

	return 0; 
} 

// Function Definitions
void displayCurrentTemperature()
{
	cout << "The current temperature in " << location << " is " << temperature << " degrees Celsius." << endl; 
}

void displayLocation() 
{
	cout << "You are currently in " << location << "." << endl; 
}

void calculateTemperature()
{
	// Variables 
	int highTemp = 0; 
	int lowTemp = 0; 
	int averageTemp = 0; 

	// Prompt user for high and low temperature
	cout << "Please enter the high and low temperature for " << location << ": "; 
	cin >> highTemp >> lowTemp;

	// Calculate average temperature 
	averageTemp = (highTemp + lowTemp) / 2; 

	// Asign average temperature to global variable 
	temperature = averageTemp; 
}