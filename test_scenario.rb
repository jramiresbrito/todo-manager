require_relative 'task'
require_relative 'task_repository'

repository = TaskRepository.new
task1 = Task.new('Study MVC')
task2 = Task.new('Make To Do Manager')

repository.add(task1)
repository.add(task2)

p repository

