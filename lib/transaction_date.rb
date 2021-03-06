require 'date'

# TransactionDate is resposible for the validation of dates
class TransactionDate
  def initialize; end

  def new_date(date)
    check_for_letters(date)
    check_format_date(date)
    check_date_is_not_in_future(date)
    format_date(date)
  end

  private

  def format_date(date)
    Date.strptime(date, '%m/%d/%Y')
  end

  def check_format_date(date)
    format_date(date)
  rescue ArgumentError
    raise 'Deposit rejected: incorrect date, please format as MM/DD/YYYY'
  end

  def check_for_letters(date)
    raise 'Deposit rejected: cannot use letters in date' if
      date.chars.any? { |char| ('a'..'z').cover? char.downcase }
  end

  def check_date_is_not_in_future(date)
    raise 'Deposit rejected: cannot use a future date' unless
      format_date(date) <= Date.today
  end
end
