def word_calculator(string)
  value_arr = string.to_s.split(" ")
  operators = { "plus" => "+", "minus" => "-", "divided" => "/", "multiplied" => "*","times" => "*", "to" => "**" }
  value_arr.each_with_index do |value, index|
      if operators.include?(value)
        value_arr[index] = operators[value]
      elsif value.to_i == 0
        value_arr[index] = ""
      else
        value_arr[index] = value.to_f
      end
  end
  eval value_arr.join(" ")
end

def sentance_calculator(sentance)
  sentance_arr = sentance.to_s.split(/[?.]/)
  final_arr = []
  sentance_arr.each do |single|
  final_arr << word_calculator(single)
  end
  final_arr.join(", ")
end

puts sentance_calculator("What is 2 plus 3? What is 7 divided by 4?")
