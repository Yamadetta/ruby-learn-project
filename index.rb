require "yaml"
require "./logger"

a_order = "A".ord
correct_answers = 0
incorrect_answers = 0
currentDate = Time.now.strftime("%Y-%m-%d_%H-%M-%S")

puts "Введите ваше имя"
user_name = gets.strip

File.write("./results/#{user_name}-#{currentDate}.txt", "Результаты теста
Тестируемый: #{user_name}\n\n", mode: "a")

data = YAML.safe_load_file("./data/questions.yml", symbolize_names: true)

data.each do |item|
  puts "\n=== #{item[:question]} ==="

  answers = item[:answers]
  correct_answer = answers[0]

  answers = answers.shuffle.each.with_index.inject({}) do |acc, (item, i)|
    letter = (a_order + i).chr
    acc[letter] = item

    puts "#{letter}. #{item}"

    acc
  end

  loop do
    user_answer = gets.strip[0].upcase
    # user_answer = "A"

    if user_answer.between?("A", "D")
      if answers[user_answer] == correct_answer
        puts "\nПравильный ответ!"
        correct_answers += 1
      else
        puts "\nНеправильный ответ!"
        puts "Правильный ответ - #{correct_answer}!"
        incorrect_answers += 1
      end

      File.write(
        "./results/#{user_name}-#{currentDate}.txt",
        "=== #{item[:question]} ===\nОтвет: #{user_answer}. #{answers[user_answer]}\n\nПравильный ответ: #{correct_answer}\n\n",
        mode: "a",
      )

      break
    else
      puts "Введите значение от A до D!"
    end
  end
end

puts "Правильных ответов: #{correct_answers}"
puts "Неправильных ответов: #{incorrect_answers}"

File.write(
  "./results/#{user_name}-#{currentDate}.txt",
  "==========================\nПравильных ответов: #{correct_answers}\nНеправильных ответов: #{incorrect_answers}",
  mode: "a",
)
