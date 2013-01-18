# coding: utf-8
require './today'

def modify(class_to_change, method_name)
  if class_to_change.method_defined? method_name
    class_to_change.send(:define_method, method_name) do
      yield method_name
    end
  else
    raise NoMethodError, "Method not found #{method_name}"
  end
end

modify(MyDate, 'today') { |method_name| "#{method_name} was hacked!!!" }

puts MyDate.new.today
