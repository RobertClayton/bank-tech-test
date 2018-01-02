def create_bank
  @bank = Bank.new
end

describe 'bank: deposit' do
  before(:each) do
    create_bank
  end

  it 'takes an amount as Integer and date' do
    expect(@bank.deposit(1000, '10/01/2012')).to eq('Deposit accepted')
  end

  it 'takes an amount as Float and date' do
    expect(@bank.deposit(1000.00, '10/01/2012')).to eq('Deposit accepted')
  end
end

describe 'bank: deposit amount validation checks' do
  before(:each) do
    create_bank
  end

  it 'raises error if amount is not a number' do
    message = 'Deposit rejected, please enter a valid number for amount'
    expect { @bank.deposit('1000', '10/01/2012') }.to raise_error(message)
  end

  it 'rejects floats with more than two decimal places' do
    message = 'Deposit rejected, amounts cannot exceed two decimal places'
    expect { @bank.deposit(1000.1234, '10/01/2012') }.to raise_error(message)
  end

  it 'rejects a negative integer' do
    message = 'Deposit rejected, please enter a number greater than 0'
    expect { @bank.deposit(-20, '10/01/2012') }.to raise_error(message)
  end

  it 'rejects a negative float' do
    message = 'Deposit rejected, please enter a number greater than 0'
    expect { @bank.deposit(-20.12, '10/01/2012') }.to raise_error(message)
  end
end
