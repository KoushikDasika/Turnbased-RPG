require File.expand_path(File.dirname(__FILE__) + "/environment.rb")

class Dsl
  puts "Turnbased RPG"

  @map = Map.new

  input = ""

  options = [
    "1) Print World",
    "6) Quit"
  ]


  while input != 6
    puts "\nMenu"

    options.each do |option|
      puts option
    end

    puts "Choose your option number:"
    input = gets.chomp.to_i

    case input
    when 1
      @map.print_field
    when 6
    else
      puts "Invalid input"
    end
  end
end

