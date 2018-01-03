require 'date'

# TransactionDate is resposible for the formatting of dates
class TransactionDate
  def initialize; end

  def new_date(date)
    check_parse_date(date)
    date_validations(date)
    parse_date(date)
  end

  private

  def parse_date(date)
    Date.parse(date)
  end

  def check_parse_date(date)
    Date.parse(date)
  rescue ArgumentError
    raise 'Deposit rejected: incorrect date, please format as DD/MM/YYYY'
  end

  def date_validations(date)
    raise 'Deposit rejected: cannot use letters in date' if
      date.chars.any? { |char| ('a'..'z').cover? char.downcase }
  end
end
