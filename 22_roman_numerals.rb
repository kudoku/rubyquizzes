# This week's quiz is to write a converter to and from Roman numerals.
# You can combine letters to add values, by listing them largest to smallest from left to right.
# However, you may only list three consecutive identical letters. 
# That requires a special rule to express numbers like 4 and 900. 
# That rule is that a single lower value may proceed a larger value, 
# to indicate subtraction. This rule is only used to build values not reachable by the previous rules:

# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000


# pseudocode
# 1.  Create method that contains the rules for converting RN => int
# 2.  Rules 
#         A.  List the largest values starting from the left to right by adding
              # Check and match largest value for int and RN
#         B.  May only list 3 consecutive identical letters
#         C.  Special rule for letter-1 to indicate subtraction
# 3.    


# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000


class Quiz
  attr_accessor(:output_rn, :input_number, :output_number, :sum)

  def initialize(input_number)
    @rn = {I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}
    @input_number = input_number
    @output_rn = []
    @output_number = []
  end

  def convert_to_rn

    while @input_number > 0
      @rn.each_with_index do |(key, value), index|
        if (value == @input_number) 
          @output_rn.push(key)
          @input_number -= value

        elsif (value > @input_number) && (@input_number > 1)
          @output_rn.push(@rn.keys[index-1])
          @input_number -= (@rn[@rn.keys[index-1]]).to_i
          break
        end
      end
    end
  end

  def convert_to_arabic(input_rn)
    input_rn.map do |element|
      @rn.each do |key, value|
        if key == element
          @output_number << value
        end
      end
    end
    @sum = (@output_number.inject { |result, element| result + element })
  end


end

start = Quiz.new(777)
start.convert_to_rn
start.convert_to_arabic([:D,:C,:C,:L,:X,:X,:V,:I,:I])

p start.output_rn.join("")

p start.sum







