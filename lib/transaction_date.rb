require 'date'

# TransactionDate is resposible for the formatting of dates
class TransactionDate
  def initialize; end

  def new_date(date)
    Date.parse(date)
    rescue ArgumentError
      raise "Deposit rejected: incorrect date, please format as DD/MM/YYYY"
    date
  end
end
