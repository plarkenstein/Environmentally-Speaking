package main

import (
	"fmt"
)

func main() {
	// Print a welcome message
	fmt.Println("Welcome to Environmentally Speaking!\n")

	// Variables to hold statistics
	var pollution int
	var wildlifeAtRisk int
	var waterPollution int
	var airPollution int
	var plasticInOceans int

	// Initialize our stats
	pollution = 420
	wildlifeAtRisk = 9
	waterPollution = 90
	airPollution = 65
	plasticInOceans = 67

	// Print out our stats 
	fmt.Printf("The current level of global pollution is %d\n", pollution)
	fmt.Printf("The number of species at risk of extinction is %d\n", wildlifeAtRisk)
	fmt.Printf("The amount of water pollution is %d\n", waterPollution)
	fmt.Printf("The amount of air pollution is %d\n", airPollution)
	fmt.Printf("The amount of plastic in the ocean is %d\n\n", plasticInOceans)

	// Explain the consequences of our pollution
	fmt.Println("The consequences of this pollution are widespread and devastating.")
	fmt.Println("Wildlife habitats are being destroyed, water sources are becoming polluted,")
	fmt.Println("air quality is deteriorating, and our oceans are filling with plastic garbage.")
	fmt.Println("We must take action to protect our planet and stop the destruction of our environment.")

	// Variables to hold future statistics
	var futurePollution int
	var futureWildlifeAtRisk int
	var futureWaterPollution int
	var futureAirPollution int
	var futurePlasticInOceans int

	// Estimate our future stats
	futurePollution = pollution - 100
	futureWildlifeAtRisk = wildlifeAtRisk - 3
	futureWaterPollution = waterPollution - 20
	futureAirPollution = airPollution - 25
	futurePlasticInOceans = plasticInOceans - 30

	// Print out our estimated future stats
	fmt.Printf("\nIf we take action, our estimated future statistics are\n")
	fmt.Printf("Global pollution: %d\n", futurePollution)
	fmt.Printf("Species at risk: %d\n", futureWildlifeAtRisk)
	fmt.Printf("Water pollution: %d\n", futureWaterPollution)
	fmt.Printf("Air pollution: %d\n", futureAirPollution)
	fmt.Printf("Plastic in ocean: %d\n\n", futurePlasticInOceans)

	// Print a message of hope
	fmt.Println("It is possible for us to reverse the damage that has been done, and create a better future.")
	fmt.Println("We must all work together to make sure our environment stays healthy and protected!")
}