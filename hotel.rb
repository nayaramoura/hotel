require 'Time'
require 'pry'

class Hotel

  def search_cheapest (customer_type, string_date)
    date = Time.parse(string_date)

    if is_weekday(date) then
      'Lakewood'
    else
      'Bridgewood'
    end
  end

  def is_weekday(date)
    (1..5).include?(date.wday)
  end

end
