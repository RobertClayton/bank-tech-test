# StatementHistory is responsible for storing the statements
class StatementHistory
  def initialize
    @list_of_statements = []
    @statement_to_print = []
  end

  def new(statement)
    @list_of_statements << statement
  end

  def print_statement
    create_printing_list
  end

  private

  def return_all_statements
    reverse_list.each do |statement|
      puts statement
    end
  end

  def reverse_list
    @statement_to_print.reverse
  end

  def add_statement_title
    @statement_to_print << 'date || credit || debit || balance'
  end

  def update_printing_list
    @statement_to_print = @list_of_statements
  end

  def create_printing_list
    update_printing_list
    add_statement_title
    return_all_statements
  end
end
