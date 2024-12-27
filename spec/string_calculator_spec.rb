require 'string_calculator'

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    calculator = StringCalculator.new
    expect(calculator.add("")).to eq(0)
  end

  it "returns the number for a single number" do
    calculator = StringCalculator.new
    expect(calculator.add("1")).to eq(1)
  end

  it "returns the sum for two numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1,5")).to eq(6)
  end

  it "returns the sum for multiple numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1,2,3,4,5")).to eq(15)
  end
end
