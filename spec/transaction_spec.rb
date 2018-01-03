def stubs
  @amount_stub = 1000
  @date_stub = '10/10/2012'
end

describe 'Transaction: initialize' do
  before(:each) do
    stubs
    @transaction = Transaction.new(@amount_stub, @date_stub)
  end

  it 'amount defaults to 0' do
    expect(@transaction.amount).to eq(@amount_stub)
  end
end
