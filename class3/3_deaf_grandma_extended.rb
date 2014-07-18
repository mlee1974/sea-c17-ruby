# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

bye_count = 0
while true
  puts "SAY SOMETHING, SONNY!"
  input = gets.chomp
  if input == "BYE" && bye_count < 3
    bye_count = bye_count + 1
  end
  if input == "BYE" && bye_count == 3
    puts "NO, NOT SINCE 1938!"
    break
  elsif input != "BYE"
    bye_count = 0
    puts "HUH!  SPEAK UP, SONNY!"
  end
end
