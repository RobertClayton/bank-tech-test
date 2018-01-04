describe Bank do
  subject(:bank) { described_class.new }

  it '#deposit accepts two arguments' do
    expect(subject.deposit(1000, '10/01/2012')).to eq('Deposit accepted')
  end
end
