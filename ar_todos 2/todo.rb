require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"


def list_all_tasks
    Task.all.each do |task|
      puts "#{task.id}: #{task.item}"
    end
end

def add
  Task.create(item: ARGV[1]) 
  list_all_tasks
end

# def delete
#   task = Task.find_by_id(ARGV[1])
#   if task
#     task.delete
#   else
#     puts "Task with id #{ARGV[1]} doesn't exist."
#   end
# end

def delete
  Task.find_by_id(ARGV[1]).delete rescue puts "BALABA"
end

# if ARGV[0] == 'delete'
#   delete_task = Task.all
#   puts "I'm going to delete #{ARGV[1]}"
#   if ARGV[1] == delete_task.index
#     puts "i did it!"
#   end 
# end
if ARGV[0] == 'delete'
  delete
  list_all_tasks
end

if ARGV[0] == 'add'
  add
end

if ARGV[0] == 'list'
  list_all_tasks
end

# if ARGV[0] == 'add'
#   Task.all << Task.create(item: ARGV[1]) 
#   Task.all.each_with_index do |task, index|
#     puts "#{index + 1}: #{task.item}"
#   end
# end
