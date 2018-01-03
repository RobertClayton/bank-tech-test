require 'transaction'

# Bank is used by the user to perform an action:
# (desposit, withdraw, print statement)
class Bank
  def initialize
    @transaction = Transaction.new
  end

  def deposit(amount, date)
    @transaction.deposit(amount, date)
    'Deposit accepted'
  end
end
