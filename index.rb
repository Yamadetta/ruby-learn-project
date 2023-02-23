class Example
  @@global_counter = 0 # Объявление глобальной переменной для класса
  # При создании экземпляра вызывается эта функция
  def initialize(name, age)
    @name = name # Объявление переменной экземпляра класса с присвоением
    @age = age
    @some = '123'
  end

  def show_me
    puts "Имя: #{@name}"
    puts "Возраст: #{@age}"
    puts "=============="
  end

  def new_age(value)
    @age = value
  end

  def age() return @age end

  def age=(value)
    @age = value
  end

  def incriment
    @@global_counter += 1
  end
end

a = Example.new('John', 22)
a.show_me()

a.new_age(2)
a.show_me()

a.age = 10
a.show_me()


puts a.age
