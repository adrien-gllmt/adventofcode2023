# frozen_string_literal: true

input = File.readlines("#{File.dirname(__FILE__)}/input.txt", chomp: true)

##################################
# BEGINNING OF PART 1
##################################
total = 0
input.each do |line|
  card, eligible_numbers = line.split(' | ')

  _, *card_numbers = card.scan(/\d+/)

  winning_numbers = eligible_numbers.scan(/\d+/) & card_numbers

  total += 2**(winning_numbers.size - 1) unless winning_numbers.empty?
end

puts "Part 1: #{total}"
##################################
# END OF PART 1
##################################
