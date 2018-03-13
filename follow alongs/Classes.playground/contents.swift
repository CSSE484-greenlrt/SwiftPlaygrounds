// Simple class
class BankAccount: CustomStringConvertible {
    var name: String
    var balance: Double
    
    init(name: String, balance: Double) {
        self.name = name
        self.balance = balance
    }
    
    func deposit(_ amount: Double) {
        balance += amount
    }
    
    func withdraw(_ amount: Double) {
        balance -= amount
    }
    
    var description: String {
        return "\(name): $\(balance)"
    }
    
}

var daveAccount = BankAccount(name: "Dave", balance: 100.00)
daveAccount.deposit(50)
daveAccount.withdraw(10)






// Subclass






//var bobAccount = AtmBankAccount()
//bobAccount.deposit(100)
//bobAccount.withdraw(40)





