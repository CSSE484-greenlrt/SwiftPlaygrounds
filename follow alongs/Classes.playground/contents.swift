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
class AtmBankAccount: BankAccount {
    var withdrawFee: Double = 0.0
    let defaultWithdrawFee: Double = 2.0
    
    override init(name: String, balance: Double) {
        withdrawFee = defaultWithdrawFee
        super.init(name: name, balance: balance)
    }
    
    init(name: String, balance: Double, withdrawFee: Double) {
        self.withdrawFee = withdrawFee
        super.init(name: name, balance: balance)
    }
    
    convenience init() {
        self.init(name: "Anonymous", balance: 0)
    }
    
    override func withdraw(_ amount: Double) {
        super.withdraw(amount)
        balance -= withdrawFee
    }
}
var defaultAccount = AtmBankAccount()
defaultAccount.deposit(100)
defaultAccount.withdraw(40)


var bobAccount = AtmBankAccount(name: "Bob", balance: 10)
bobAccount.deposit(100)
bobAccount.withdraw(40)


var expensiveAccount = AtmBankAccount(name: "Rich", balance: 10000, withdrawFee: 500)
expensiveAccount.deposit(100)
expensiveAccount.withdraw(40)
