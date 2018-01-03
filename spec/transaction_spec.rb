class BalanceStub
  def initialize
    @balance = 0
  end

  def update_balance(amount)
    @balance += amount
  end
end

class StatementStub
  def initialize; end

  def new(amount, date); end
end

def create_transaction
  @amount_stub = 1000
  @balance_stub = BalanceStub.new
  @date_stub = '10/10/2012'
  @statement_stub = StatementStub.new
  @transaction = Transaction.new(@balance_stub, @statement_stub)
end

describe 'Transaction: #deposit' do
  before(:each) do
    create_transaction
  end

  it 'accepts two arguments' do
    expect(@transaction.deposit(@amount_stub, @date_stub))
      .to eq('deposit accepted')
  end
end
