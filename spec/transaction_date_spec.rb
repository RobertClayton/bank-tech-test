describe TransactionDate do
  subject(:transaction_date) { described_class.new }

  it '#new_date will create a Date object from given String' do
    expect(subject.new_date('10/01/2012')).to be_instance_of(Date)
  end

  it '#check_format_date will throw error for incorrect day entry' do
    error = 'Deposit rejected: incorrect date, please format as MM/DD/YYYY'
    expect { subject.new_date('01/101/2012') }.to raise_error(error)
    expect { subject.new_date('01/32/2012') }.to raise_error(error)
  end

  it '#check_format_date will throw error for incorrect month entry' do
    error = 'Deposit rejected: incorrect date, please format as MM/DD/YYYY'
    expect { subject.new_date('011/10/2012') }.to raise_error(error)
    expect { subject.new_date('13/10/2012') }.to raise_error(error)
  end

  it '#check_date_is_not_in_future will throw error for future dates' do
    error = 'Deposit rejected: cannot use a future date'
    expect { subject.new_date('10/01/2100') }.to raise_error(error)
  end

  it '#check_for_letters will throw error for letters added in date' do
    error = 'Deposit rejected: cannot use letters in date'
    expect { subject.new_date('DD/01/2012') }.to raise_error(error)
    expect { subject.new_date('10/MM/2012') }.to raise_error(error)
    expect { subject.new_date('10/01/YYYY') }.to raise_error(error)
    expect { subject.new_date('10/01/2o12') }.to raise_error(error)
  end
end
