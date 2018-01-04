require './lib/balance.rb'
require './lib/transaction.rb'
require './lib/statement.rb'

# Bank is used by the user to perform an action:
# (desposit, withdraw, print statement)
class Bank
  def initialize
    @balance = Balance.new
    @statement = Statement.new
    @transaction = Transaction.new(@balance, @statement)
  end

  def deposit(amount, date)
    @transaction.deposit(amount, date)
    'Deposit accepted'
  end

  def print_statement
    @statement.print_statement
  end
end
