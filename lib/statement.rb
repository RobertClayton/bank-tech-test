require './lib/statement_history.rb'

# Statement is resposible for validating statements
class Statement
  def initialize
    @statement_history = StatementHistory.new
  end

  def new(amount, date)
    'New statement added'
  end

  def print; end
end
