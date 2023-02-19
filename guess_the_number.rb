# Угадай число

random_number = (rand * 10).to_i + 1
counter = 0

if random_number > 5
  phrase = "Оно больше 5."
else phrase = "Оно меньше, либо равно 5." end

puts "Я загадал число от 1 до 10"
puts "Угадай число, которое я загадал. #{phrase}"

def guess_number(random_number, counter)
  input = gets.to_i

  if input == random_number
    puts "Ты угадал, я загадал #{random_number}"
    puts "Для того, чтобы отгадать, тебе потребовалось #{counter} попыток"
  else
    puts "Ты не угадал. Попробуй еще раз"
    counter += 1
    guess_number(random_number, counter)
  end
end

guess_number(random_number, counter)
