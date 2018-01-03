def create_bank
  @bank = Bank.new
end

describe 'Bank: #deposit' do
  before(:each) do
    create_bank
  end

  it 'accepts two arguments' do
    expect(@bank.deposit(1000, '10/01/2012')).to eq('Deposit accepted')
  end
end
