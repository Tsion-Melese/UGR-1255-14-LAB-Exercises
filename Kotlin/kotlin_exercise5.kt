fun analyzeString(text: String): Triple<Int, Int, Int> {
    val words = text.split("\\s+").filter { it.isNotEmpty() }  
  
    val uppercaseCount = text.count { char -> char.isUpperCase() }
  
    val vowels = "aeiouAEIOU"
    val vowelCount = text.count { char -> char in vowels }
  
    return Triple(words.size, uppercaseCount, vowelCount)
  }
  