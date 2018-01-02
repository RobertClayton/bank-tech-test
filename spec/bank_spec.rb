describe 'bank:' do
  describe 'deposit' do
    before(:each) do
      @bank = Bank.new
    end

    it 'takes an amount as float and date in string format' do
      expect(@bank.deposit(1000.00, '10/01/2012')).to eq('Deposit accepted')
    end
  end
end
