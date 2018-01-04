describe Balance do
  subject(:balance) { described_class.new }

  it '#initialize with a balance of 0' do
    expect(subject.return_balance).to eq(0)
  end

  it '#update_balance should accept a Integer or Float' do
    subject.update_balance(1000)
    subject.update_balance(1000.12)
    expect(subject.return_balance).to eq(2000.12)
  end

  it '#return_balance should return the current balance' do
    subject.update_balance(123)
    expect(subject.return_balance).to eq(123)
  end
end
