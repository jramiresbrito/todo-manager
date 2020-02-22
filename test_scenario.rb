require_relative 'task'
require_relative 'task_repository'
require_relative 'view'
require_relative 'controller'

repository = TaskRepository.new
view = View.new
controller = Controller.new(repository, view)

controller.add_task
controller.add_task
controller.list_tasks
controller.add_task
controller.list_tasks

# p repository
