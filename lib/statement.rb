require './lib/statement_history.rb'

# Statement is resposible for validating statements
class Statement
  def initialize
    @statement_history = StatementHistory.new
  end

  def new(amount, date, balance)
    format_statement(amount, date, balance)
    'New statement added'
  end

  def print_statement
    format_statement_list_for_print
  end

  private

  def format_statement(amount, date, balance)
    credit = amount if amount >= 0
    debit = amount if amount < 0
    current_balance = balance.return_balance
    statement = "#{date} || #{credit} || #{debit} || #{current_balance}"
    @statement_history.new(statement)
  end

  def format_statement_list_for_print
    @statement_history.print_statement
  end
end
