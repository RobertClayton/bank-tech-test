describe Bank do
  subject(:bank) { described_class.new }

  it '#deposit accepts two arguments' do
    expect(subject.deposit(1000, '10/01/2012')).to eq('Deposit accepted')
  end

  it '#print_statement returns a formatted statement' do
    subject.deposit(1000, '10/01/2012')
    subject.deposit(1, '10/02/2012')
    expect(subject.print_statement)
      .to eq([
               'date || credit || debit || balance',
               '10/02/2012 || 1 ||  || 1001',
               '10/01/2012 || 1000 ||  || 1000'
             ])
  end
end
