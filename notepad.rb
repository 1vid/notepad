require_relative 'lib/post.rb'
require_relative 'lib/link.rb'
require_relative 'lib/task.rb'
require_relative 'lib/memo.rb'

puts 'Привет, я твой блокнот'
puts 'Что хотите записать в блокнот?'

choices = Post.post_type

choice = -1

until choice >=0 && choice < choices.size

  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Ура, запись сохранена!"