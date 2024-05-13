import kotlin.random.Random

fun main() {
    val passwordLength = 8

    val lowercaseLetters = ('a'..'z').toList()
    val uppercaseLetters = ('A'..'Z').toList()
    val digits = ('0'..'9').toList()
    val specialSymbols = "!@#\$%^&*()_+-=[]|\\{}:;'<,>.?/~".toList()

    val allChars = lowercaseLetters + uppercaseLetters + digits + specialSymbols

    val password = buildString {
        val random = Random.Default
        repeat(passwordLength) {
            val charIndex = random.nextInt(allChars.size)
            append(allChars[charIndex])
        }
    }
    println("Generated password: $password")
}
