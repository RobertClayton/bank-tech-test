def create_transaction_date
  @transaction_date = TransactionDate.new
end

describe 'TransactionDate: #new_date' do
  before(:each) do
    create_transaction_date
  end

  it 'will create a Date object from given String' do
    expect(@transaction_date.new_date('10/01/2012')).to be_instance_of(Date)
  end
end

describe 'TransactionDate: #check_format_date' do
  before(:each) do
    create_transaction_date
  end

  it 'will throw error for incorrect day entry' do
    error = 'Deposit rejected: incorrect date, please format as MM/DD/YYYY'
    expect { @transaction_date.new_date('01/101/2012') }.to raise_error(error)
    expect { @transaction_date.new_date('01/32/2012') }.to raise_error(error)
  end

  it 'will throw error for incorrect month entry' do
    error = 'Deposit rejected: incorrect date, please format as MM/DD/YYYY'
    expect { @transaction_date.new_date('011/10/2012') }.to raise_error(error)
    expect { @transaction_date.new_date('13/10/2012') }.to raise_error(error)
  end
end

describe 'TransactionDate: #check_date_is_not_in_future' do
  before(:each) do
    create_transaction_date
  end

  it 'will throw error for future dates entered' do
    error = 'Deposit rejected: cannot use a future date'
    expect { @transaction_date.new_date('10/01/2100') }.to raise_error(error)
  end
end

describe 'TransactionDate: #check_for_letters' do
  before(:each) do
    create_transaction_date
  end

  it 'will throw error for letters added in date' do
    error = 'Deposit rejected: cannot use letters in date'
    expect { @transaction_date.new_date('DD/01/2012') }.to raise_error(error)
    expect { @transaction_date.new_date('10/MM/2012') }.to raise_error(error)
    expect { @transaction_date.new_date('10/01/YYYY') }.to raise_error(error)
    expect { @transaction_date.new_date('10/01/2o12') }.to raise_error(error)
  end
end
