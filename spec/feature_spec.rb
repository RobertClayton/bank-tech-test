describe 'Feature tests:' do
  before(:each) do
    @bank = Bank.new
  end

  xit 'user can make a desposit' do
    @bank.deposit(1000, '10/01/2012')
    result = '10/01/2012 || 1000.00 || || 1000.00'
    expect(@statement_history.list_of_statements.last).to eq(result)
  end
end
