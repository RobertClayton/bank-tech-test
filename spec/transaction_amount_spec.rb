describe TransactionAmount do
  subject(:transaction_amount) { described_class.new }

  it '#new_amount takes an Integer as an argument' do
    expect(subject.new_amount(1000)).to eq(1000)
  end

  it '#new_amount takes an Float as an argument' do
    expect(subject.new_amount(1000.12)).to eq(1000.12)
  end

  it '#check_that_number_was_entered raises error not an Integer or Float' do
    message = 'Deposit rejected, please enter a valid number for amount'
    expect { subject.new_amount('1000') }.to raise_error(message)
  end

  it '#check_for_more_than_two_decimal_places rejects more than two decimals' do
    message = 'Deposit rejected, amounts cannot exceed two decimal places'
    expect { subject.new_amount(1000.1234) }.to raise_error(message)
  end

  it '#check_if_number_is_negative rejects a negative Integer' do
    message = 'Deposit rejected, please enter a number greater than 0'
    expect { subject.new_amount(-20) }.to raise_error(message)
  end

  it '#check_if_number_is_negative rejects a negative Float' do
    message = 'Deposit rejected, please enter a number greater than 0'
    expect { subject.new_amount(-20.12) }.to raise_error(message)
  end
end
