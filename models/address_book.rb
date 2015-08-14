require_relative "entry.rb"
require "csv"

class AddressBook
  attr_accessor :entries
  def initialize
    @entries = []
  end 
  def add_entry(name, phone, email)
    index = 0
      @entries.each do |entry|
       	if name < entry.name
         	break
       	end
       	index += 1
     	end
    @entries.insert(index, Entry.new(name, phone, email))
  end
  def remove_entry(name, phone, email)
   	@entries.delete_if{|entry| entry.name == name}
  end
  def import_from_csv(file_name)
    csv_text = File.read(file_name)
    csv = CSV.parse(csv_text, headers:true, skip_blanks:true)
    csv.each do |row|
      row_hash = row.to_hash
      add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
    end
  end
end