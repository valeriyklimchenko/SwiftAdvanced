protocol ATM {

    var balanse: Int { get }

    func enterPin(_ pin: Int)

    func withdraw(sum: Int) -> Int?

}

class PermataAtm: ATM {

    var balanse: Int { self.checkBalance() }

    var pin: Int = 1

    func enterPin(_ pin: Int) {
        self.pin = pin
    }

    func withdraw(sum: Int) -> Int? {
        guard pin != 0, checkBalance() == sum else {
            return nil
        }
        return sum
    }

    func checkBalance() -> Int {
        return 100
    }

    func checkPin(_ pin: Int) -> Bool {
        return true
    }

}

//var atm = PermataAtm()
//atm.withdraw(sum: 100)

var atm: ATM = PermataAtm()
atm.withdraw(sum: 100)
atm.balanse


