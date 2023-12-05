def hello(&name_creator)
  puts "Hello, #{name_creator.call}!"
end

hello do
  "World"
end
