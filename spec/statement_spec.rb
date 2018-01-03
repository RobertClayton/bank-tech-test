def create_statement
  @statement = Statement.new
end

describe 'Statement: #new' do
  before(:each) do
    create_statement
  end

  it 'accepts two arguments' do
    expect(@statement.new(1000, '10/01/2012')).to eq('New statement added')
  end
end
