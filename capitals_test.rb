countries = [
  "РФ",
  "Китай",
  "Франция",
  "Великобритания",
  "Норвегия",
  "Камбоджа",
]

capitals = [
  "Москва",
  "Пекин",
  "Париж",
  "Лондон",
  "Осло",
  "Пномпень",
]

obj = {}

countries.each.with_index do |item, index|
  obj[item] = capitals[index]
end

# obj.each do |key, value|
#   puts "Назовите столицу #{key}:"
#   input = gets.strip.downcase

#   if input === value.downcase
#     puts "И это правильный ответ!"
#   else
#     puts "Неверно, столица #{key} это #{value}"
#   end
# end

# Спросить в рандомном порядке
obj.keys.shuffle.each do |item|
  puts "Назовите столицу #{item}:"
  input = gets.strip.downcase

  if input === obj[item].downcase
    puts "И это правильный ответ!"
  else
    puts "Неверно, столица #{item} это #{obj[item]}"
  end
end
