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

  def new(amount, date, balance); end
end

describe Transaction do
  let(:balance_stub) { BalanceStub.new }
  let(:statement_stub) { StatementStub.new }
  subject(:transaction) { described_class.new(balance_stub, statement_stub) }

  before(:each) do
    @amount_stub = 1000
    @date_stub = '10/10/2012'
  end

  it '#deposit accepts two arguments' do
    expect(subject.deposit(@amount_stub, @date_stub))
      .to eq('deposit accepted')
  end
end
