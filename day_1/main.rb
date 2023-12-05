# frozen_string_literal: true

input = File.readlines("#{File.dirname(__FILE__)}/input.txt", chomp: true)

##################################
# BEGINNING OF PART 1
##################################
total = 0
input.each do |line|
  matched_group = line[/(\d)(.*\d)?/]
  total += [matched_group[0], matched_group[-1]].join.to_i
end
puts "Part 1: #{total}"
##################################
# END OF PART 1
##################################

##################################
# BEGINNING OF PART 2 (not even finished)
##################################
total = 0
def find_last_word(line, last_word)
  %w[one two three four five six seven eight nine].each do |n|
    last_word = { 'index' => line =~ /#{n}/, 'word' => n } if line =~ /#{n}/ && (line =~ /#{n}/) > last_word['index']
  end
end

def find_last_num(line, last_num)
  10.times do |n|
    last_num = { 'index' => line =~ /#{n}/, 'num' => n } if line =~ /#{n}/ && (line =~ /#{n}/) > last_num['index']
  end
end

input.each do |line|
  last_word = { 'index' => 0, 'word' => '' }
  last_num = { 'index' => 0, 'num' => 0 }
  find_last_word(line, last_word)
  find_last_num(line, last_num)
end

puts "Part 2: #{total}"
##################################
# END OF PART 2
##################################
