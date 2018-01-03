describe 'TransactionDate:' do
  before(:each) do
    @transaction_date = TransactionDate.new
  end

  describe 'new_date' do
    it 'will create a Date object from given string' do
      expect(@transaction_date.new_date('10/01/2012')).to be_instance_of(Date)
    end

    it 'will throw error for incorrect date entry' do
      error = 'Deposit rejected: incorrect date, please format as DD/MM/YYYY'
      expect { @transaction_date.new_date('101/01/2012') }.to raise_error(error)
      expect { @transaction_date.new_date('32/01/2012') }.to raise_error(error)
    end

    it 'will throw error for incorrect month entry' do
      error = 'Deposit rejected: incorrect date, please format as DD/MM/YYYY'
      expect { @transaction_date.new_date('10/011/2012') }.to raise_error(error)
      expect { @transaction_date.new_date('10/13/2012') }.to raise_error(error)
    end

    it 'will throw error for letters added in date' do
      error = 'Deposit rejected: cannot use letters in date'
      expect { @transaction_date.new_date('DD/01/2012') }.to raise_error(error)
      expect { @transaction_date.new_date('10/MM/2012') }.to raise_error(error)
      expect { @transaction_date.new_date('10/01/YYYY') }.to raise_error(error)
      expect { @transaction_date.new_date('10/01/2o12') }.to raise_error(error)
    end
  end
end
