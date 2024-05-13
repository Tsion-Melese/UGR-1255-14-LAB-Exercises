fun main() {
    println("Enter your grade")
    val grade = readLine()?.toIntOrNull() ?: 0
  
    if (grade < 0 || grade > 100) {
      println("Invalid grade. Please enter a number between 0 and 100.")
      return
    }
  
    val letter = when {
      grade >= 90 -> "A"
      grade >= 80 -> "B"
      grade >= 70 -> "C"
      grade >= 60 -> "D"
      else -> "F"
    }

    println("Your letter grade is: $letter")
  }
  