def my_method
  x = "Good bye"
  yield("cruel")
end

x = "hellow"
my_method {|y| p "x: #{x}, y: #{y}"}


def just_yield
  yield
end

top_level_valiable = 1

just_yield do
  p top_level_valiable
  top_level_valiable += 1
  p top_level_valiable
  local_to_block = 1
end
p top_level_valiable
# p local_to_block

v1 = 1

class MyClass
  v2 = 2
  p local_variables
  def my_method
    v3 = 3
    p local_variables
  end
  p local_variables
end

#  obj = MyClass.new
#  obj.my_method
#  obj.my_method
#  local_variables

