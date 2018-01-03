def create_statement_history
  @statement_history = StatementHistory
end

describe 'StatementHistory:' do
  before(:each) do
    create_statement_history
  end
end
