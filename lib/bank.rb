require 'transaction'

# Bank is used by the user to perform an action:
# (desposit, withdraw, print statement)
class Bank
  def initialize; end

  def deposit(amount, date)
    Transaction.new(amount, date)
    'Deposit accepted'
  end
end
