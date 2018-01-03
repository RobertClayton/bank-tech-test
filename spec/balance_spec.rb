def create_balance
  @balance = Balance.new
end

describe 'Balance: #initialize' do
  before(:each) do
    create_balance
  end

  it 'should initialize with a balance of 0' do
    expect(@balance.return_balance).to eq(0)
  end
end

describe 'Balance: #update_balance' do
  before(:each) do
    create_balance
  end

  it 'should accept a Integer or Float' do
    @balance.update_balance(1000)
    @balance.update_balance(1000.12)
    expect(@balance.return_balance).to eq(2000.12)
  end
end

describe 'Balance: #return_balance' do
  before(:each) do
    create_balance
  end

  it 'should return the current balance' do
    @balance.update_balance(123)
    expect(@balance.return_balance).to eq(123)
  end
end
