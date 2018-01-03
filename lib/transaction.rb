require 'transaction_amount'
require 'transaction_date'

# This class will be used to make new withdrawal or deposit transactions
class Transaction
  def initialize(amount, date)
    @amount = amount
    @date = date
    @transaction_amount = TransactionAmount.new
    @transaction_date = TransactionDate.new
  end

  def amount
    deposit_amount_validation_checks(@amount)
    @amount
  end

  def date
    deposit_date_validation_checks(@date)
    @date
  end

  private

  def deposit_amount_validation_checks(amount)
    @transaction_amount.new_amount(amount)
  end

  def deposit_date_validation_checks(date)
    @transaction_date.new_date(date)
  end
end
