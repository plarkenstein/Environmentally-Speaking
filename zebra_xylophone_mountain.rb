class EnvironmentallySpeaking
  def initialize
    @solutions = []
  end

  def add_solution(solution)
    @solutions << solution
  end

  def solutions
    @solutions
  end

  # Energy
  def save_energy
    @solutions << "Switch to energy-saving lightbulbs, turn off lights in unoccupied rooms, replace old appliances with energy-saving appliances, unplug phone chargers and unused appliances, and use natural light when possible."
  end

  # Water
  def conserve_water
    @solutions << "Check for and repair leaks in water systems, install low-flow toilets and showerheads, collect rainwater for watering plants, take shorter showers, and use a broom instead of a hose to clean sidewalks."
  end

  # Food
  def reduce_food_waste
    @solutions << "Compost food waste, reduce portion sizes, plan meals ahead of time, shop smarter, and donate excess food to local food banks or shelters."
  end

  # Recycling
  def recycle
    @solutions << "Know what can and cannot be recycled, use reusable bags for shopping, donate unwanted items to charity, and reuse packaging when possible."
  end

  # Air Pollution
  def reduce_air_pollution
    @solutions << "Reduce car emissions, replace traditional fireplaces with efficiency-rated wood stoves, select paint with little to no VOCs, and purchase energy-efficient appliances."
  end
end

environmentally_speaking = EnvironmentallySpeaking.new
environmentally_speaking.save_energy
environmentally_speaking.conserve_water
environmentally_speaking.reduce_food_waste
environmentally_speaking.recycle
environmentally_speaking.reduce_air_pollution

puts environmentally_speaking.solutions