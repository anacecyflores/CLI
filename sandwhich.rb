class Sandwhich
  attr_accessor :name, :bread

  def initialize
    @name = name
    @bread = bread
  end
  
  def make
    puts "\n"
    puts "Welcome to the Ruby Sandwhich Maker!🥪"
    puts "What will you call your #{self.name}sandwhich?"
    self.name = gets.chomp.capitalize
    puts "\n"
    puts "The #{self.to_s} looks delicious! Hope you enjoy!"
    puts "🥬+🥓+🍅+🍞+🥖🟰 #{self.to_s}🥪!"
        puts "You seem hungry, what kind of bread do you want?"
    self.bread = gets.chomp
    sandwhich_maker
  end

  def sandwhich_maker
    loop do
      puts "\n"
      puts "What would you like to add to the #{@name} sandwhich?"
      puts "1. add lunch meat to #{@name}"
      puts "2. add condiments to  #{@name}"
      puts "3. add lettuce to  #{@name}"
      puts "4. Want to cut #{@name} in half?"
      puts "5. Exit simulation"
      puts "Choose an option: "
      choice = gets.chomp.to_i
      case choice
      when 1
        meat
      when 2
        condiments
      when 3
        lettuce
      when 4
        cut
      when 5
        puts "Enjoy your #{@name}, goodbye!"
        break
      else
        puts "#{@name} is confused, try another option."
      end
    end
  end

  def meat
    reaction = [
      "here is some turkey ham!",
      "let's add some salami.",
      "smoked ham is a must!",
      "I just added another slice, just in case."
    ]

    puts "\n"
    puts "Maybe #{@name} needs more meat?"
    puts "1. Let's add more meat to the #{@name}."
    puts "2. Nevermind, we are out of meat. Sorry, cant add more meat to your #{@name}!"
    choice = gets.chomp.to_i
    case choice
    when 1
      puts "\n"
      puts "You added more meat to the #{@name}."
      puts "#{@name} #{reaction.sample}"
    when 2
      puts "\n"
      puts "You didn't want more meat added to your #{@name}."
    end
  end

  def condiments
    puts "\n"
    puts "Let's add mayo to #{@name}!"
    puts "What should we add?"
    puts "1. chipotle sauce"
    puts "2. mustard"
    puts "3. relish"
    puts "4. Nevermind, #{@name} doesn't need condiments."
    choice = gets.chomp.to_i
    case choice
    when 1
      puts "\n"
      puts "#{@name} got more condiments."
    when 2
      puts "\n"
      puts "#{@name} needed mayo."
    when 3
      puts "\n"
      puts "#{@name} needed some spice!"
    when 4
    end
  end

  def lettuce
    reaction = [
      "needed some greens.",
      "needed something healthy.",
      "looks so good.",
      "is perfect."
    ]

    puts "\n"
    puts "You added lettuce #{@name}."
    puts "#{@name} #{reaction.sample}"
  end

  def cut
    mood = [
      "neutral",
      "sleepy",
      "hungry",
      "bored",
      "condimentsful",
      "like it wants attention"
    ]

    puts "\n"
    puts "You take a look at #{@name}."
    puts "#{@name} looks #{mood.sample}."
  end

  def to_s
    "#{@name} #{@bread} sandwhich"
  end
end
