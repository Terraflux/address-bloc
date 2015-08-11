def greeting
	ARGV.each do |arg|
		if arg == ARGV[0]
			return
		else
			puts "#{ARGV[0]} #{arg}"
		end
	end
end