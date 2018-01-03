def create_transaction_amount
  @transaction_amount = TransactionAmount.new
end

describe 'TransactionAmount: new_amount' do
  before(:each) do
    create_transaction_amount
  end

  it 'takes an Integer as an argument' do
    expect(@transaction_amount.new_amount(1000)).to eq(1000)
  end

  it 'takes an Float as an argument' do
    expect(@transaction_amount.new_amount(1000.12)).to eq(1000.12)
  end

  it 'raises error if amount is not a number' do
    message = 'Deposit rejected, please enter a valid number for amount'
    expect { @transaction_amount.new_amount('1000') }.to raise_error(message)
  end

  it 'rejects floats with more than two decimal places' do
    message = 'Deposit rejected, amounts cannot exceed two decimal places'
    expect { @transaction_amount.new_amount(1000.1234) }.to raise_error(message)
  end

  it 'rejects a negative integer' do
    message = 'Deposit rejected, please enter a number greater than 0'
    expect { @transaction_amount.new_amount(-20) }.to raise_error(message)
  end

  it 'rejects a negative float' do
    message = 'Deposit rejected, please enter a number greater than 0'
    expect { @transaction_amount.new_amount(-20.12) }.to raise_error(message)
  end
end
