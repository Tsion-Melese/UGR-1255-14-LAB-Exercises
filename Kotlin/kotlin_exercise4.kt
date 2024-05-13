fun main() {
    val originalPrice = 750.0
    val discountPercentage = 0.2
    val discountThreshold = 0.5
  
    val discountAmount = originalPrice * discountPercentage
  
    if (discountAmount > originalPrice * discountThreshold) {
      println("Discount is too high Set discount  ${discountThreshold * 100}%")
      val adjustedDiscountAmount = originalPrice * discountThreshold
      val finalPrice = originalPrice - adjustedDiscountAmount
      println("Original price: $originalPrice")
      println("Discount applied: ${discountThreshold * 100}%")
      println("Final price: $finalPrice")
    } else {
      val finalPrice = originalPrice - discountAmount
      println("Original price: $originalPrice")
      println("Discount applied: ${discountPercentage * 100}%")
      println("Final price: $finalPrice")
    }
  }
  