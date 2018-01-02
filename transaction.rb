# This class will be used to make new withdrawal or deposit transactions
class Transaction
  attr_reader :amount

  def initialize(amount = 0)
    @amount = amount
  end
end
