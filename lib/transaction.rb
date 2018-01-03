require './lib/balance.rb'
require './lib/transaction_amount.rb'
require './lib/transaction_date.rb'

# This class will be used to make new withdrawal or deposit transactions
class Transaction
  def initialize
    @transaction_amount = TransactionAmount.new
    @transaction_date = TransactionDate.new
  end

  def deposit(amount, date)
    deposit_amount_validation_checks(amount)
    deposit_date_validation_checks(date)
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
end
