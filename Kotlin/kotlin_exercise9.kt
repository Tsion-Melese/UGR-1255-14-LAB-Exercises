
fun transformToUpperCase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

fun filterGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, number -> acc + number }
}
fun main() {
    val strings = listOf("one", "two", "three")

    val upperCaseStrings = transformToUpperCase(strings)
    println("Uppercase Strings: $upperCaseStrings")

    val numbers = listOf(10, 20, 30, 40, 50, 60)

    val filteredNumbers = filterGreaterThan(numbers, 30)
    println("Numbers greater than 30: $filteredNumbers")

    val sum = calculateSum(numbers)
    println("Sum of numbers: $sum")
}
