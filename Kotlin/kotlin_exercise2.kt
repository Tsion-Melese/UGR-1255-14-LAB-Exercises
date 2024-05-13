fun main() {
    val distance = 10.0  
    val unit = "km"
    val conversionRate = 0.621371
    if (unit == "km") {
      val distancemiles = distance * conversionRate
      println("$distance kilometers is equal to $distancemiles miles.")
    } else {
      println("Unit '$unit' is not supported.")
    }
  }
  