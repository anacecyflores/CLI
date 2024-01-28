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
      puts "What would you like to do to the #{@name} sandwhich?"
      puts "1. add lunch meat to #{@name}"
      puts "2. add condiments to  #{@name}"
      puts "3. add lettuce to  #{@name}"
      puts "4. Want to cut #{@name} in half?"
      puts "5. Eat my #{@name} sandwich"
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
        puts "Enjoy your #{@name} sandwhich, goodbye!"
        break
      else
        puts "#{@name} is not ready, sorry."
      end
    end
  end

  def meat
    reaction = [
      "here is some turkey ham! 🦃",
      "let's add some salami.",
      "smoked ham is a must!",
      "I just added another slice, just in case.",
      "bacon time 🥓🥓🥓."
    ]

    puts "\n"
    puts "Maybe your #{@name} sandwhich needs more meat?"
    puts "1. Let's add more meat to your #{@name}."
    puts "2. Nevermind, the #{@name}is good on meat! "
    choice = gets.chomp.to_i
    case choice
    when 1
      puts "\n"
      puts "You added more meat to your #{@name} sandwhich. YUM!"
      puts "#{@name} #{reaction.sample}"
    when 2
      puts "\n"
      puts "Aww, you didn't want more meat added to your #{@name} sandwhich.💔"
    end
  end

  def condiments
    puts "\n"
    puts "Let's add mayo to #{@name}!"
    puts "What should we add?"
    puts "1. tomato"
    puts "2. mustard"
    puts "3. relish"
    puts "4. Nevermind, #{@name} doesn't need anything added."
    choice = gets.chomp.to_i
    case choice
    when 1
      puts "\n"
      puts "The #{@name} got sliced tomatoes 🍅!"
    when 2
      puts "\n"
      puts "The #{@name} needed mustard."
    when 3
      puts "\n"
      puts "Yeah, the #{@name} needed some relish!"
    when 4
    end
  end

  def lettuce
    reaction = [
      "needed some greens.",
      "needed something healthy.",
      "looks so good.",
      "is perfect!"
    ]

    puts "\n"
    puts "You added lettuce to the #{@name} sandwhich. 🥬"
    puts "#{@name} #{reaction.sample}"
  end

  def cut
    mood = [
      "in half!",
      "in 4 little pieces",
      "not cut!(Why would you share?)",
      "ready to be eaten!",
      "perfect!"
    ]

    puts "\n"
    puts "You took a bite of your new #{@name} sandwhich."
    puts "#{@name} is now #{mood.sample}."
  end

  def to_s
    "#{@name} #{@bread}sandwhich"
  end
end
