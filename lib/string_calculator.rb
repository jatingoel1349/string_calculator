class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    # define default delimiters: comma and newline
    delimiter = /,|\n/ 

    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      # Extract the dynamic delimiter
      delimiter = Regexp.escape(parts[0][2..]) 
      if parts[0].include?("*")
        operation = :* # Change operation to multiplication if * is in the delimiter
      end
      numbers = parts[1]
    end

    arr = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives_num = arr.select { |n| n < 0 }

    unless negatives_num.empty?
      raise "negative numbers not allowed: #{negatives_num.join(', ')}"
    end

    operation == :* ? arr.reduce(1, :*) : arr.sum
  end
end
