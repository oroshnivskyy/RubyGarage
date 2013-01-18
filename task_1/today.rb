# coding: utf-8
class MyDate
  def today
    Time.now.strftime("%A")
  end
end

puts MyDate.new.today