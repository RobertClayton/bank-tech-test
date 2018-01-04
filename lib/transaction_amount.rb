# TransactionAmount is resposible for validating the amount
class TransactionAmount
  def initialize; end

  def new_amount(amount)
    deposit_amount_validation_checks(amount)
    amount
  end

  private

  def deposit_amount_validation_checks(amount)
    check_that_number_was_entered(amount)
    check_if_number_is_negative(amount)
    check_for_more_than_two_decimal_places(amount)
  end

  def check_that_number_was_entered(amount)
    raise 'Deposit rejected, please enter a valid number for amount' unless
      (amount.is_a? Float) || (amount.is_a? Integer)
  end

  def check_if_number_is_negative(amount)
    raise 'Deposit rejected, please enter a number greater than 0' unless
    amount >= 0
  end

  def check_for_more_than_two_decimal_places(amount)
    raise 'Deposit rejected, amounts cannot exceed two decimal places' unless
    check_decimals(amount)
  end

  def check_decimals(amount)
    if amount.to_s.include?('.') && amount.to_s[-3..-1].include?('.')
      true
    elsif amount.to_s.include?('.') &&
          amount.to_s[-3..-1].include?('.') == false
      false
    else
      true
    end
  end
end
