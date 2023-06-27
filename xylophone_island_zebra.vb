Public Class EnvironmentallySpeaking
   Private Sub EnvironmentallySpeaking_Load(sender As Object, e As EventArgs) Handles MyBase.Load
       Dim environmentMessage = "Environmentally Speaking"
       Label1.Text = environmentMessage
   End Sub
   
   Private Sub recycleButton_Click(sender As Object, e As EventArgs) Handles recycleButton.Click
       Dim environmentMessage = "Recycling is Important!"
       Label1.Text = environmentMessage
   End Sub
   
   Private Sub reduceButton_Click(sender As Object, e As EventArgs) Handles reduceButton.Click
       Dim environmentMessage = "Reduce, Reuse and Recycle!"
       Label1.Text = environmentMessage
   End Sub
   
   Private Sub conserveButton_Click(sender As Object, e As EventArgs) Handles conserveButton.Click
       Dim environmentMessage = "Conserve Natural Resources"
       Label1.Text = environmentMessage
   End Sub
   
   Private Sub carsButton_Click(sender As Object, e As EventArgs) Handles carsButton.Click
       Dim environmentMessage = "Cars and Pollution Don't Mix!"
       Label1.Text = environmentMessage
   End Sub
   
   Private Sub wildlifeButton_Click(sender As Object, e As EventArgs) Handles wildlifeButton.Click
       Dim environmentMessage = "Protect Wildlife"
       Label1.Text = environmentMessage
   End Sub
   
   Private Sub energyButton_Click(sender As Object, e As EventArgs) Handles energyButton.Click
       Dim environmentMessage = "Conserve Energy"
       Label1.Text = environmentMessage
   End Sub
   
   Private Sub foodButton_Click(sender As Object, e As EventArgs) Handles foodButton.Click
       Dim environmentMessage = "Limit Food Waste"
       Label1.Text = environmentMessage
   End Sub
   
   Private Sub waterButton_Click(sender As Object, e As EventArgs) Handles waterButton.Click
       Dim environmentMessage = "Save Water"
       Label1.Text = environmentMessage
   End Sub

End Class