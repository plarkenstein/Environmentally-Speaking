#Defines the function for calculating greenhouse gas emissions from a given fuel type
calculateGreenhouseGases <- function(fuelType) {
  
  #Defines the emissions in metric tons of CO2 equivalent for each fuel type  
  emissionsByFuelType <- list(
    'gasoline' = 2.39,
    'diesel' = 2.68,
    'LPG' = 2.12,
    'biodiesel' = 1.05
  )
  
  #Calculates the emissions based on the input fuel type
  if (!(fuelType %in% names(emissionsByFuelType))) {
    return(invalid())
  } else { 
    return(emissionsByFuelType[[fuelType]])
  }
}

#Defines the function to calculate the emission reduction if burning the fuel
calculateEmissionReduction <- function(greenhouseGases) {
  
  #Defines the reduction in metric tons of CO2 equivalent for each fuel type
  reductionByFuelType <- list(
    'gasoline' = 0.25,
    'diesel' = 0.49,
    'LPG' = 0.14,
    'biodiesel' = 0.58
  )
  
  #Calculates the reduction based on the inputed greenhouse gas emissions
  if (!(greenhouseGases %in% names(reductionByFuelType))) {
    return(invalid())
  } else { 
    return(reductionByFuelType[[greenhouseGases]])
  }
}

#Defines the main function 
environmentallySpeaking <- function(fuelType) {
  
  #Calculates the greenhouse gas emission of the given fuel type
  totalEmissions <- calculateGreenhouseGases(fuelType)
  
  #Calculates the reduction in emissions due to burning the fuel
  reduction <- calculateEmissionReduction(totalEmissions)
  
  #Prints the answer
  print(paste('The amount of emissions reduced from burning ', fuelType, ' is ', reduction, ' metric tons of CO2 equivalent.'))
}

#Defines the function for invalid inputs
invalid <- function() {
  print("Invalid input. Please enter a valid fuel type.")
}