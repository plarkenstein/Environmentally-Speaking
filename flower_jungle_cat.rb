class EnvironmentallySpeaking

  attr_reader :sustainability, :e_waste

  def initialize
    @sustainability = 0
    @e_waste = 0
  end

  # Calculates the resources needed and available for a given tract of land
  def resource_allocation(tract)
    # If the resources available exceed the resources needed, the sustainability rating 
    # is increased by 20%.
    total_resources_needed = total_resources_available = 0
    tract.each do |resource|
      total_resources_needed += resource[:needed]
      total_resources_available += resource[:available]
    end

    if total_resources_available > total_resources_needed
      @sustainability += 20
    end
  end

  # Calculates the amount of e-waste generated in a given year
  def e_waste_calculation(year)
    total_e_waste = 0

    # Add up the total e-waste from each device
    year.each do |key, value|
      total_e_waste += value
    end

    # Increase e-waste rating by 10%
    @e_waste += 10
  end

  # Calculates the carbon emissions of a given country
  def carbon_emissions_calculation(country)
    total_emissions = 0

    # Add up the total emissions from each source
    country.each do |source, amount|
      total_emissions += amount
    end

    # If the emissions are under the threshold, the sustainability rating
    # is increased by 10%
    if total_emissions < THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the water usage of a given country
  def water_usage_calculation(country)
    total_usage = 0

    # Add up the total water usage from each source
    country.each do |source, amount|
      total_usage += amount
    end

    # If the usage is under the threshold, the sustainability rating
    # is increased by 10%
    if total_usage < THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the energy efficiency of a given building
  def energy_efficiency_calculation(building)
    total_efficiency = 0

    # Add up the total energy efficiency from each source
    building.each do |source, amount|
      total_efficiency += amount
    end

    # If the efficiency is above the threshold, the sustainability rating
    # is increased by 10%
    if total_efficiency > THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the sustainable transportation usage of a given city
  def transportation_usage_calculation(city)
    total_usage = 0

    # Add up the total usage from each source
    city.each do |source, amount|
      total_usage += amount
    end

    # If the usage is above the threshold, the sustainability rating
    # is increased by 10%
    if total_usage > THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the waste management of a given city
  def waste_management_calculation(city)
    total_waste = 0

    # Add up the total waste management from each source
    city.each do |source, amount|
      total_waste += amount
    end

    # If the management is below the threshold, the sustainability rating
    # is increased by 10%
    if total_waste < THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the air quality of a given city
  def air_quality_calculation(city)
    total_quality = 0

    # Add up the total air quality from each source
    city.each do |source, amount|
      total_quality += amount
    end

    # If the quality is above the threshold, the sustainability rating
    # is increased by 10%
    if total_quality > THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the reduction of greenhouse gas emissions of a given city
  def reduction_ghg_calculation(city)
    total_reduction = 0

    # Add up the total reduction from each source
    city.each do |source, amount|
      total_reduction += amount
    end

    # If the reduction is above the threshold, the sustainability rating
    # is increased by 10%
    if total_reduction > THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the reduction of water pollution of a given city
  def reduction_water_pollution_calculation(city)
    total_reduction = 0

    # Add up the total reduction from each source
    city.each do |source, amount|
      total_reduction += amount
    end

    # If the reduction is above the threshold, the sustainability rating
    # is increased by 10%
    if total_reduction > THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the use of renewable resources of a given city
  def renewable_resources_calculation(city)
    total_usage = 0

    # Add up the total usage from each source
    city.each do |source, amount|
      total_usage += amount
    end

    # If the usage is above the threshold, the sustainability rating
    # is increased by 10%
    if total_usage > THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the use of non-renewable resources of a given city
  def non_renewable_resources_calculation(city)
    total_usage = 0

    # Add up the total usage from each source
    city.each do |source, amount|
      total_usage += amount
    end

    # If the usage is above the threshold, the sustainability rating
    # is increased by 10%
    if total_usage > THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the use of alternative energy sources of a given city
  def alternative_energy_calculation(city)
    total_usage = 0

    # Add up the total usage from each source
    city.each do |source, amount|
      total_usage += amount
    end

    # If the usage is above the threshold, the sustainability rating
    # is increased by 10%
    if total_usage > THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the reduction in air pollution of a given city
  def reduction_air_pollution_calculation(city)
    total_reduction = 0

    # Add up the total reduction from each source
    city.each do |source, amount|
      total_reduction += amount
    end

    # If the reduction is above the threshold, the sustainability rating
    # is increased by 10%
    if total_reduction > THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the use of green products of a given city
  def green_products_calculation(city)
    total_usage = 0

    # Add up the total usage from each source
    city.each do |source, amount|
      total_usage += amount
    end

    # If the usage is above the threshold, the sustainability rating
    # is increased by 10%
    if total_usage > THRESHOLD
      @sustainability += 10
    end
  end

  # Calculates the use of green transportation of a given city
  def green_transportation_calculation(city)
    total_usage = 0

    # Add up the total usage from each source
    city.each do |source, amount|
      total_usage += amount
    end

    # If the usage is above the threshold, the sustainability rating
    # is increased by 10%
    if total_usage > THRESHOLD
      @sustainability += 10
    end
  end

end