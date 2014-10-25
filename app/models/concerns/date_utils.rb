class DateUtils
  def self.simple_date(datetime)
    datetime.try(:strftime, "%d/%m/%Y")
  end
end