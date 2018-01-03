describe 'TransactionDate:' do
  before(:each) do
    @transaction_date = TransactionDate.new
  end

  describe 'new_date' do
    it 'will create a Date object from given string' do
      expect(@transaction_date.new_date('10/01/2012')).to be_instance_of(Date)
    end

    it 'will throw error for incorrect day entry' do
      message = "Deposit rejected: incorrect date, please format as DD/MM/YYYY"
      expect { @transaction_date.new_date('101/01/2012') }.to raise_error(message)
    end
  end
end
