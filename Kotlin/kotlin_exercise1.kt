fun main() {
    // Get the first number
    val num1 = readLine()?.toDoubleOrNull() ?: 0.0
  
    println("Enter the second number:")
    val num2 = readLine()?.toDoubleOrNull() ?: 0.0
  
    println("Enter the operation (+, -, *, /):")
    val operation = readLine() ?: ""
  
    var result = 0.0
    when (operation) {
      "+" -> result = num1 + num2
      "-" -> result = num1 - num2
      "*" -> result = num1 * num2
      "/" -> if (num2 != 0.0) {
        result = num1 / num2
      } else {
        println("Error: Cannot divide by zero.")
      }
      else -> println("Invalid operation.")
    }
  
    if (result != 0.0) {
      println("Result: $result")
    }
  }
  