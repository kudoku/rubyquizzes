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
  attr_accessor(:output_rn, :input_number)

  def initialize
    @rn = {I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}
    @input_number = 9
    @output_rn = []
  end

  def convert

    while @input_number > 0
      @rn.each_with_index do |(key, value), index|
        p 'INSIDE EACH'
        if (value > @input_number) && (@input_number > 1)
          p 'INSIDE IF'
          @output_rn.push(@rn.keys[index-1])
          @input_number -= (@rn[@rn.keys[index-1]]).to_i
          p @input_number
          break
        elsif value == @input_number
          @output_rn.push(key)
          @input_number -= value
          p 'INSIDE ELSIF'
        end
      end
    end
  end
end

start = Quiz.new
start.convert

p start.output_rn
p start.input_number

# h = {:a => "val1", :b => "val2", :c => "val3"}
# keys = h.keys
# p keys
# h[keys[0]] # "val1"
# h[keys[2]] # "val3"





