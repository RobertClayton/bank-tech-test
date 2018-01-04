describe StatementHistory do
  subject(:statement_history) { described_class.new }

  it '#new appends the new statement to list_of_statements' do
    subject.new("10/10/2012 || 200 ||  || 200")
    expect(subject.list_of_statements.last)
      .to eq("10/10/2012 || 200 ||  || 200")
  end

  it '#print_statement returns all formatted statements in reverse order' do
    subject.new("a")
    subject.new("b")
    expect(subject.print_statement)
      .to eq(["date || credit || debit || balance", "b", "a"])
  end
end
