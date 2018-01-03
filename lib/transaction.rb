require './lib/transaction_amount.rb'
require './lib/transaction_date.rb'

# This class will be used to make new withdrawal or deposit transactions
class Transaction
  def initialize(balance, statement)
    @balance = balance
    @statement = statement
    @transaction_amount = TransactionAmount.new
    @transaction_date = TransactionDate.new
  end

  def deposit(amount, date)
    deposit_amount_validation_checks(amount)
    deposit_date_validation_checks(date)
    update_balance(amount)
    'deposit accepted'
  end

  private

  def deposit_amount_validation_checks(amount)
    @transaction_amount.new_amount(amount)
    amount
  end

  def deposit_date_validation_checks(date)
    @transaction_date.new_date(date)
    date
  end

  def update_balance(amount)
    @balance.update_balance(amount)
  end
end
