fun findMax(data: List<Int>): Int? {

    if (data.isEmpty()) return null
    return data.maxOrNull()
  }
  
  fun filterEvenNumbers(data: List<Int>): List<Int> {
   
    return data.filter { it % 2 == 0 }
  }
  
  fun calculateAverage(data: List<Double>): Double? {
  
    if (data.isEmpty()) return null
    return data.sum() / data.size
  }
  fun main() {
      val numbers = listOf(5, 8, 12, 3, 10)
    
      val maxNumber = findMax(numbers)
      if (maxNumber != null) {
        println("Maximum value: $maxNumber")
      } else {
        println("List is empty.")
      }
    
      val evenNumbers = filterEvenNumbers(numbers)
      println("Even numbers: $evenNumbers")
    
      val doubleList = listOf(2.5, 4.1, 3.8)  // Example list of doubles
      val average = calculateAverage(doubleList)
      if (average != null) {
        println("Average: $average")
      } else {
        println("List is empty.")
      }
    }
    