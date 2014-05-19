class Contact

  ## In-memory list of contacts
  @@contacts = [{:name => "rene", :email => "rene@stratavox.com"},{:name => "indiana", :email => "indiana@jones.com"}]

  attr_accessor :name
  attr_accessor :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def to_s
    # TODO: return string representation of Contact
  end

  ## Class Methods
  class << self
    def create(name, email)
      Contact.new(name, email)
      
      @@contacts[@@contacts.length] = {:name => name, :email =>email}
      # TODO: Will initialize a contact as well as add it to the list of contacts
    end

    def find(index)
      # TODO: Will find and return contact by index
      puts @@contacts[index].inspect
    end
   

    def all
      # TODO: Return the list of contacts, as is
      
      @@contacts.each_with_index do |contact, index|
        name = contact[:name]
        puts "#{index} :  #{name}             <#{contact[:email]}>"
      end

      puts
      puts
      print " Press [ ENTER ] to continue..."
      gets.chomp 
      
    end
  end

end
