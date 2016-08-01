class MathOperator
 def  self.create_method(method, &logic)
   send(:define_method, method) do |*args|
     puts "you just created a method => #{method}"
     logic.call(*args)
   end
 end
end

object1 = MathOperator.new
MathOperator.create_method("add") do |x, y|
	puts x + y
end

MathOperator.create_method("sub") do |x, y|
	puts x -y
end

MathOperator.create_method("mul") do |x, y|
	puts x * y
end

MathOperator.create_method("div") do |x, y|
	puts x/y
end

puts object1.add(9, 9)
puts object1.sub(9,9)
puts object1.mul(9,9)
puts object1.div(9,9)