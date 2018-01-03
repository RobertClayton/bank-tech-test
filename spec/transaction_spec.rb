def create_transaction
  @amount_stub = 1000
  @date_stub = '10/10/2012'
  @transaction = Transaction.new
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
