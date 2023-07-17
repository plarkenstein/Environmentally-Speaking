-- ENVIRONMENTALLY SPEAKING

--[[ This Lua program is meant to demonstrate a basic level of knowledge of the language and the ability to write code
that follows good coding guidelines. The program will take the user’s input and compare it to the current national and
world temperatures. That information will be used to provide feedback on the user’s impact on the environment. ]]


-- Initialize Variables 

user_temp = nil
current_temp_national = nil
current_temp_world = nil

-- Define Functions

-- Function to get user temperature input
function getUserTemp()
  print("Enter your current temperature in Fahrenheit:")
  user_temp = io.read()
end

-- Function to get national temperature
function getNationalTemp()
  print("What is the current national temperature in Fahrenheit? :")
  current_temp_national = io.read()
end

-- Function to get world temperature
function getWorldTemp()
  print("What is the current world temperature in Fahrenheit? :")
  current_temp_world = io.read()
end

-- Function to compare user temperature to national temperature
function compareUserToNationalTemp()
  if (user_temp < current_temp_national) then
    print("Your current temperature is lower than the national average. Great job!")
  elseif (user_temp > current_temp_national) then
    print("Your current temperature is higher than the national average. Try to conserve energy to help reduce your impact on the environment!")
  else 
    print("Your current temperature is the same as the national average.")
  end
end 

-- Function to compare user temperature to world temperature
function compareUserToWorldTemp()
  if (user_temp < current_temp_world) then
    print("Your current temperature is lower than the world average. Great job!")
  elseif (user_temp > current_temp_world) then
    print("Your current temperature is higher than the world average. Try to conserve energy to help reduce your impact on the environment!")
  else 
    print("Your current temperature is the same as the world average.")
  end
end 

-- Program Execution 

getUserTemp() 
getNationalTemp() 
getWorldTemp() 
compareUserToNationalTemp() 
compareUserToWorldTemp()