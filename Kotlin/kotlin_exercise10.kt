class BankAccount(val accountNumber: String, var balance: Double) {

    fun deposit(amount: Double) {
      if (amount > 0) {
        balance += amount
        println("Deposited $$amount. New balance: $$balance")
      } else {
        println("Invalid deposit amount. Please enter a positive value.")
      }
    }
  
    fun withdraw(amount: Double) {
      if (amount > 0 && balance >= amount) {
        balance -= amount
        println("Withdrew $$amount. New balance: $$balance")
      } else {
        println("Insufficient funds or invalid withdrawal amount.")
      }
    }
  
    fun printBalance() {
      println("Account balance: $$balance")
    }
  }
  fun main() {
    val account1 = BankAccount("100001829", 700.0)
  
    account1.deposit(500.0)
  
    account1.printBalance()
  
    account1.withdraw(175.0)
  
    account1.withdraw(25.0)
  
    account1.printBalance()
  }
  
  