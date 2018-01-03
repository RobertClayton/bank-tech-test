describe 'Transaction: initialize' do
  before(:each) do
    @transaction = Transaction.new
  end

  it 'amount defaults to 0' do
    expect(@transaction.amount).to eq(0)
  end
end
