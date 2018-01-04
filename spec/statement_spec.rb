class Balance
  def initialize
    @balance = 0
  end

  def return_balance
    @balance
  end
end

describe Statement do
  subject(:statement) { described_class.new }
  let(:balance_stub) { Balance.new }

  it '#new accepts two arguments' do
    expect(subject.new(1000, '10/01/2012', balance_stub))
      .to eq('New statement added')
  end
end
