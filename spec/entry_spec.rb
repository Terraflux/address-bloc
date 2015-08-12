require_relative '../models/entry.rb'

RSpec.describe Entry do
	context "attributes" do
		it "should respond to name" do
			entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
			expect(entry).to respond_to(:name)
		end
		it "should respond to phone number" do
			entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
			expect(entry).to respond_to(:phone_number)
		end
		it "should respond to email" do
			entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
			expect(entry).to respond_to(:email)
		end
	end
	context "#to_s" do
    	it "prints an entry as a string" do
    		entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
    		expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
    		expect(entry.to_s).to eq(expected_string)
    	end
    end
end