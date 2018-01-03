require 'date'

# TransactionDate is resposible for the formatting of dates
class TransactionDate
  def initialize; end

  def new_date(date)
    check_parse_date(date)
    check_for_letters(date)
    check_date_is_not_in_future(date)
    parse_date(date)
  end

  private

  def parse_date(date)
    Date.parse(date)
  end

  def check_parse_date(date)
    parse_date(date)
  rescue ArgumentError
    raise 'Deposit rejected: incorrect date, please format as DD/MM/YYYY'
  end

  def check_for_letters(date)
    raise 'Deposit rejected: cannot use letters in date' if
      date.chars.any? { |char| ('a'..'z').cover? char.downcase }
  end

  def check_date_is_not_in_future(date)
    raise 'Deposit rejected: cannot use a future date' unless
      parse_date(date) <= Date.today
  end
end
