#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 4 points
#
# In the early days of Roman numerals, the Romans didn't bother with any of this
# new-fangled subtraction "IX" nonsense. No sir, it was straight addition,
# biggest to littlest - so 9 was written "VIIII" and so on.
#
# Write a method that, when passed any integer between 1 and 3000, it returns a
# string containing the proper old-school Roman numeral. In other words:
#
#   old_roman_numeral(9)
#
# should return
#
#   "VIIII"
#
# Make sure to test your method on a bunch of different numbers like 1999.
#
# Hint 1: Use the integer division and modulus methods on page 32.
#
# Hint 2: Here's a mapping of Roman to Arabic numerals:
#
#   I = 1
#   V = 5
#   X = 10
#   L = 50
#   C = 100
#   D = 500
#   M = 1000
#
# Hint 3: Run the program from the shell like this:
#
#   $ ruby 4_old_school_roman_numerals.rb 9
#   VIIII

def old_school_roman_numeral(num)
  m_count = 0
  d_count = 0
  c_count = 0
  l_count = 0
  x_count = 0
  v_count = 0
  i_count = 0

  if num >= 1000
    m_count = num / 1000
    num = num % 1000
  end

  if num >= 500
    d_count = num / 500
    num = num % 500
  end

  if num >= 100
    c_count = num / 100
    num = num % 100
  end

  if num >= 50
    l_count = num / 50
    num = num % 50
  end

  if num >= 10
    x_count = num / 10
    num = num % 10
  end

  if num >= 5
    v_count = num / 5
    num = num % 5
  end

  if num < 5
    i_count = num / 1
    num = num % 10
  end

puts 'M' * m_count + 'D' * d_count + 'C' * c_count + 'L' * l_count +
     'X' * x_count + 'V' * v_count + 'I' * i_count

end

input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 4_old_school_roman_numerals [1-3000]"
  exit
end

puts old_school_roman_numeral(input)
