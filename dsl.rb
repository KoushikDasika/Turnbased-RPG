require File.expand_path(File.dirname(__FILE__) + "/environment.rb")
Dir[File.dirname(__FILE__) + 'db/characters/*.rb'].each {|file| YAML.load_file(file.path) }

class Dsl
  puts "Turnbased RPG"

  input = ""

  options = [
    "1) Start Game",
    "6) Quit"
  ]

  while true
    puts "\nMenu"

    options.each do |option|
      puts option
    end

    puts "Choose your option number:"
    input = gets.chomp.to_i

    case input
    when 1
      game = Game.new
      game.start_game
    when 6
      break
    else
      puts "Invalid input"
    end
  end
end
