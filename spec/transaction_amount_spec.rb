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
end

describe 'TransactionAmount: check_that_number_was_entered' do
  before(:each) do
    create_transaction_amount
  end

  it 'raises error if amount is not an Integer or Float' do
    message = 'Deposit rejected, please enter a valid number for amount'
    expect { @transaction_amount.new_amount('1000') }.to raise_error(message)
  end
end

describe 'TransactionAmount: check_for_more_than_two_decimal_places' do
  before(:each) do
    create_transaction_amount
  end

  it 'rejects Floats with more than two decimal places' do
    message = 'Deposit rejected, amounts cannot exceed two decimal places'
    expect { @transaction_amount.new_amount(1000.1234) }.to raise_error(message)
  end
end

describe 'TransactionAmount: check_if_number_is_negative' do
  before(:each) do
    create_transaction_amount
  end

  it 'rejects a negative Integer' do
    message = 'Deposit rejected, please enter a number greater than 0'
    expect { @transaction_amount.new_amount(-20) }.to raise_error(message)
  end

  it 'rejects a negative Float' do
    message = 'Deposit rejected, please enter a number greater than 0'
    expect { @transaction_amount.new_amount(-20.12) }.to raise_error(message)
  end
end
