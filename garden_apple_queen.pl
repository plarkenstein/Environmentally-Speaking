#!/usr/bin/perl

use strict;
use warnings;

# Subroutines for calculating environmental impact

sub calculateCarbonFootprint {
	my $milesTraveled = shift;
	my $milesPerGallon = shift;

	my $carbonFootprint = ($milesTraveled / $milesPerGallon) * 20;
	return $carbonFootprint;
}

sub calculateCO2Output {
	my $electricityConsumed = shift;

	my $CO2Output = $electricityConsumed * 1.37;
	return $CO2Output;
}

# Main program

my $milesTraveled = 1000;
my $milesPerGallon = 20;
my $electricityConsumed = 400;

my $carbonFootprint = calculateCarbonFootprint($milesTraveled, $milesPerGallon);
my $CO2Output = calculateCO2Output($electricityConsumed);

print "The carbon footprint for your car is $carbonFootprint\n";
print "The CO2 output for your electricity consumption is $CO2Output\n";

# Subroutines to calculate recycling and composting

sub calculatePlasticRecycling {
	my $plasticConsumed = shift;
	my $plasticRecycled = shift;

	my $plasticRecyclingRate = ($plasticRecycled / $plasticConsumed) * 100;
	return $plasticRecyclingRate;
}

sub calculateComposting {
	my $foodWaste = shift;
	my $compostingRate = shift;

	my $composted = $foodWaste * $compostingRate;
	return $composted;
}

# Main program

my $plasticConsumed = 500;
my $plasticRecycled = 450;
my $foodWaste = 10;
my $compostingRate = 0.25;

my $plasticRecyclingRate = calculatePlasticRecycling($plasticConsumed, 
													$plasticRecycled);
my $composted = calculateComposting($foodWaste, $compostingRate);

print "The plastic recycling rate is $plasticRecyclingRate\n";
print "The amount of food composted is $composted\n";

# Subroutines to calculate water and energy usage

sub calculateWaterConsumption {
	my $people = shift;
	my $dailyUsage = shift;
	
	my $waterConsumption = $people * $dailyUsage;
	return $waterConsumption;
}

sub calculateElectricityUsage {
	my $appliances = shift;
	my $dailyUsage = shift;

	my $electricityUsage = $appliances * $dailyUsage;
	return $electricityUsage;
}

# Main program

my $people = 5;
my $dailyWaterUsage = 100;
my $appliances = 10;
my $dailyElectricityUsage = 5;

my $waterConsumption = calculateWaterConsumption($people, 
												$dailyWaterUsage);
my $electricityUsage = calculateElectricityUsage($appliances, 
												 $dailyElectricityUsage);

print "The amount of water consumed is $waterConsumption\n";
print "The amount of electricity consumed is $electricityUsage\n";