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
