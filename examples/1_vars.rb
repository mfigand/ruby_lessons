# var = 1         # (1)

class Demo
  CONSTANT = "I'm a constant".freeze

  var = 2       # (2)
  @@class_var = 'class_var'          # Shared between class and subclasses
  @instance_var  = 'instance_var'    # Specific to this class

  def puts_in_method_var
    # var = 3     # (3)
    # CONSTANT = 'New value'     # (3)
    puts "in method: var = #{CONSTANT}"
  end

  # puts "in class: var = #{var}"

  # def change_var_value_inside_a_block
  #   a = 0

  #   1.upto(3) do |i|
  #     a += i
  #     b = i*i
  #   end

  #   puts "\n a = #{a}"
  # end

  # def a
  #   puts "method `a' called"
  
  #   99
  # end

  # def overwrite_variable
  #   [1, 2].each do |i|
  #     if i == 2
  #       puts "a = #{a}"
  #     else
  #       a = 1
  #       puts "a = #{a}"
  #     end
  #   end

  #   puts "\ncalling method a = #{a}"
  # end
end

# puts "at top level: var = #{var}"

instance_class = Demo.new

# instance_class.puts_in_method_var
# instance_class.change_var_value_inside_a_block
# instance_class.a
# instance_class.overwrite_variable

puts "\n#{Demo::CONSTANT}"
