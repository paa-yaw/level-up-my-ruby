module ArraySorterModule
   def iterate_and_sort_remaining_elements
    (@merged_array.length - 1).times do |i|
  	  if @merged_array[i].length < @merged_array[i + 1].length
  	  	puts "********"
  	  elsif @merged_array[i].length == @merged_array[i + 1].length
  	  	puts "*********"
  	  elsif @merged_array[i].length > @merged_array[i + 1].length 
  	  	puts "some unsorted elements => #{@merged_array[i]} and #{@merged_array[i + 1]}"
  	  	sort_array
  	  end
  	end
  end

  def loop_function 
  	(@merged_array.length - 1).times do |i|
  	  if @merged_array[i].length < @merged_array[i + 1].length
  	  	@merged_array[i], @merged_array[i + 1] = @merged_array[i], @merged_array[i + 1]
  	  elsif @merged_array[i + 1].length < @merged_array[i].length
  	  	@merged_array[i], @merged_array[i + 1] = @merged_array[i + 1], @merged_array[i]
  	  elsif @merged_array[i].length == @merged_array[i + 1].length
  	  	@merged_array[i], @merged_array[i + 1] = @merged_array[i], @merged_array[i + 1]
  	  end
  	  @index += 1
  	end
  end

end


class ArraySorter
  include ArraySorterModule

  def initialize(array1, array2)
  	@swapped = false
  	@index = 0
  	@array1 = array1
  	@array2 = array2
  	@merged_array = array1 + array2
  end
  
  def merged_array
  	p @merged_array
  end

  def merged_array_length
  	p @merged_array.length
  end

 
  def sort_array
  	loop_function
  	iterate_and_sort_remaining_elements
  	p @merged_array
  end
end

programming_languages = ["javascript", "python", "scala", "c++", "c-sharp",  "ruby", "java"]
web_frameworks = ["Meteor.js", "rails", "spring", "django"]
subjects = ["biology", "chemistry", "physics", "computer science", "astronomy", "medicine", "art"]
sorter = ArraySorter.new(web_frameworks, subjects)
sorter.merged_array
sorter.merged_array_length
sorter.sort_array