def greeting
    argGreeting, *argName = ARGV
    argName.each do |name|
        puts "#{argGreeting} #{name}"
    end
end

greeting
