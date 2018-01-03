# Balance will be responsible for verifying the Banks balance
class Balance
  def initialize
    @balance = 0
  end

  def update_balance(amount)
    @balance += amount
  end

  def return_balance
    @balance
  end
end
