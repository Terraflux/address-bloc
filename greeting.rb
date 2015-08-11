def greeting
	ARGV.each do |arg|
		if arg == ARGV[0]
			next
		else
			puts "#{ARGV[0]} #{arg}"
		end
	end
end