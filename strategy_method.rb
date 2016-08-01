class Algorithm
  def initialize(solution)
  	@solution = solution
  end

  attr_accessor :solution

  def solve
  	@solution.solve
  end
end


class Solution_1
  def solve
  	process_1
  	process_2
  	process_3
  	process_4
  end

  def process_1
  	puts "step 1"
  end

  def process_2
  	puts "step 2"
  end

  def process_3
  	puts "step 3"
  end

  def process_4
  	puts "step 4"
  end
end


class Solution_2 
  def solve
  	process_1
  	process_2
  	process_3
  	process_4
  end

  def process_1
  	puts "step 3"
  end

  def process_2
  	puts "step 1"
  end

  def process_3
  	puts "step 4"
  end

  def process_4
  	puts "step 2"
  end
end

solution = Algorithm.new(Solution_1.new)
solution.solve
puts "...................."
solution.solution = Solution_2.new
solution.solve
puts "using procs instead of classes"
puts "******************************"

class AlgorithmProc
  def initialize(&block_1)
  	block_1.call
  end
end

first_solution = Proc.new do 
	puts "step 1"
	puts "step 2"
	puts "step 3"
	puts "step 4"
end

second_solution = Proc.new do 
   puts "re-arrange steps"
end
puts "//////////////////////////////////////"
solution = AlgorithmProc.new(&first_solution)
solution = AlgorithmProc.new(&second_solution)