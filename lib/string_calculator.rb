class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    # define default delimiters: comma and newline
    delimiter = /,|\n/ 

    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      # Extract the dynamic delimiter
      delimiter = Regexp.escape(parts[0][2..]) 
      numbers = parts[1]
    end

    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end
end
