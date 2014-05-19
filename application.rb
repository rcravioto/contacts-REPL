class Application

  def initialize
    @continue = true
  end

  def handle_command(user_input)
  #binding.pry
    if (/list|quit|new/ =~ user_input.downcase) # valid input
      case user_input
            when 'new'
             puts "\e[H\e[2J"
             print " name: "
             name = gets.chomp
             print "email: "
             email = gets.chomp
             Contact.create(name,email)
 
            when 'list'
              ###
              #puts "# of contacts running = " + ObjectSpace.each_object(Contact).count.to_s
              Contact.all
            when 'quit'
              @continue = false
      end
    else
      puts "Invalid Command"
      sleep 1.0
    end
  end


  def run
    
    while @continue do
      show_main_menu
      user_input = gets.chomp
      handle_command(user_input)
      #binding.pry
    end
  end

  private

  # Prints the main menu only
  def show_main_menu
    puts "\e[H\e[2J"
    puts "Welcome to the app. What's next?"
    puts " new      - Create a new contact"
    puts " list     - List all contacts"
    puts " quit     - Exit Application"
    print "> "
  end

end
