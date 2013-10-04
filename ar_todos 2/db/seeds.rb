require 'faker'
require_relative '../config/application.rb'
require_relative '../app/models/task.rb'



15.times do  
  Task.create(item: Faker::Company.bs)

  # task.save!


  # new_task = Task.create
  




  # item = Faker::Lorem.sentences(word_count = 4, supplemental = false)
end


