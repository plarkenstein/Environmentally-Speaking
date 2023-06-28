' Environmentally Speaking
' Written by ___________

Public Class Environment 

   Private environmentCondition As Boolean 

   Sub New()
      environmentCondition = True 
   End Sub 

   Public Function isEnvironmentHealthy() As Boolean 
      Return environmentCondition 
   End Function 

   Public Sub startRecycling() 
      recycleCans()
      recyclePaper()
      recycleGlass()
   End Sub 

   Private Sub recycleCans()
      MessageBox.Show("Recycling cans")
   End Sub 

   Private Sub recyclePaper()
      MessageBox.Show("Recycling paper")
   End Sub 

   Private Sub recycleGlass()
      MessageBox.Show("Recycling glass")
   End Sub

End Class 

Public Class Water 

   Private waterLevel As Integer 

   Sub New() 
      waterLevel = 10 
   End Sub 

   Public Function isWaterLevelOk() As Boolean 
      Return (waterLevel > 5) 
   End Function 

   Public Sub saveEnvironmentalWater() 
      conserveWater()
      stopWaterPollution()
      reuseGreyWater()
   End Sub 

   Private Sub conserveWater()
      MessageBox.Show("Conserving water")
   End Sub 

   Private Sub stopWaterPollution()
      MessageBox.Show("Stopping water pollution")
   End Sub 

   Private Sub reuseGreyWater()
      MessageBox.Show("Reusing grey water")
   End Sub 

End Class 

Public Class Energy 

   Private energyProduction As Integer 

   Sub New() 
      energyProduction = 15 
   End Sub 

   Public Function isEnergyProductionOk() As Boolean 
      Return (energyProduction > 10) 
   End Function 

   Public Sub saveEnvironmentalEnergy() 
      reduceEnergyConsumption()
      switchToRenewableEnergy()
      conserveNaturalResources()
   End Sub 

   Private Sub reduceEnergyConsumption()
      MessageBox.Show("Reducing energy consumption")
   End Sub 

   Private Sub switchToRenewableEnergy()
      MessageBox.Show("Switching to renewable energy")
   End Sub 

   Private Sub conserveNaturalResources()
      MessageBox.Show("Conserving natural resources")
   End Sub

End Class 

Public Class Air 

   Private airQuality As Integer 

   Sub New() 
      airQuality = 8 
   End Sub 

   Public Function isAirQualityOk() As Boolean 
      Return (airQuality > 5) 
   End Function 

   Public Sub saveEnvironmentalAir() 
      reduceAirPollution()
      plantTrees()
      reduceCars()
   End Sub 

   Private Sub reduceAirPollution()
      MessageBox.Show("Reducing air pollution")
   End Sub 

   Private Sub plantTrees()
      MessageBox.Show("Planting trees")
   End Sub 

   Private Sub reduceCars()
      MessageBox.Show("Reducing cars")
   End Sub

End Class 

Public Class GlobalEnvironment 

   Private environmentIndex As Integer 

   Sub New() 
      environmentIndex = 25 
   End Sub 

   Public Function isGlobalEnvironmentOk() As Boolean 
      Return (environmentIndex > 15) 
   End Function 

   Public Sub saveGlobalEnvironment() 
      reduceGreenhouseGases()
      reduceWaterConsumption()
      switchToGreenCleaning()
   End Sub 

   Private Sub reduceGreenhouseGases()
      MessageBox.Show("Reducing greenhouse gases")
   End Sub 

   Private Sub reduceWaterConsumption()
      MessageBox.Show("Reducing water consumption")
   End Sub 

   Private Sub switchToGreenCleaning()
      MessageBox.Show("Switching to green cleaning")
   End Sub 

End Class 

Public Class Program 

   Public Shared Sub Main() 

      Dim environment As Environment = New Environment() 
      Dim water As Water = New Water() 
      Dim energy As Energy = New Energy() 
      Dim air As Air = New Air() 
      Dim globalEnvironment As GlobalEnvironment = New GlobalEnvironment() 

      If environment.isEnvironmentHealthy() Then 
         environment.startRecycling() 
      Else 
         MessageBox.Show("Environment needs help")
      End If 

      If water.isWaterLevelOk() Then 
         water.saveEnvironmentalWater() 
      Else 
         MessageBox.Show("Water needs help") 
      End If 

      If energy.isEnergyProductionOk() Then 
         energy.saveEnvironmentalEnergy() 
      Else 
         MessageBox.Show("Energy needs help") 
      End If 

      If air.isAirQualityOk() Then 
         air.saveEnvironmentalAir() 
      Else 
         MessageBox.Show("Air needs help") 
      End If 

      If globalEnvironment.isGlobalEnvironmentOk() Then 
         globalEnvironment.saveGlobalEnvironment() 
      Else 
         MessageBox.Show("Global environment needs help") 
      End If 

   End Sub 

End Class