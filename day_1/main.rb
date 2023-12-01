# frozen_string_literal: true

# BEGINNING OF PART 1
def concat_numbers(array)
  array.join('').to_i
end

def sum_total(file)
  total = 0
  File.foreach(file) do |line|
    matched_group = line[/(\d)(.*\d)?/]
    total += concat_numbers([matched_group[0], matched_group[-1]])
  end
  total
end

puts "Le résultat de la partie 1 est #{sum_total('day_1/input.txt')}"
# END OF PART 1

# BEGINNING OF PART 2
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

def sum_total_with_letters(file)
  total = 0
  File.foreach(file) do |line|
    last_word = { 'index' => 0, 'word' => '' }
    last_num = { 'index' => 0, 'num' => 0 }
    find_last_word(line, last_word)
    find_last_num(line, last_num)
  end
  total
end

sum_total_with_letters('day_1/input.txt')
