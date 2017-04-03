# #8
require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    # #9
    index = 0
    entries.each do |entry|
      # #10
      break if name < entry.name
      index+= 1
    end
    # #11
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    index = 0
    entries.each do |entry|
      break if (name.eql? entry.name) && (phone_number.eql? entry.phone_number) && (email.eql? entry.email)
      index += 1
    end
    entries.delete_at(index)

  end
end
