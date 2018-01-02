# Bank is used by the user to perform an action (desposit, withdraw, print statement)
class Bank
  def initialize
  end

  def deposit(amount, date)
    if (amount.is_a? Float) && (date.is_a? String)
      return 'Deposit accepted'
    else
      return 'Deposit rejected'
    end
  end
end
