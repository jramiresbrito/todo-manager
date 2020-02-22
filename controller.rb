require_relative 'task'
require_relative 'view'
require_relative 'task_repository'

class Controller
  def initialize
    @repository = TaskRepository.new
    @view = View.new
  end

  def add_task
    title = @view.ask_user_for_task_title
    task = Task.new(title)
    @repository.add(task)
  end

  def list_tasks
    tasks = @repository.tasks
    @view.print_tasks(tasks)
  end

  def mark_task_as_complete
    index = @view.ask_for_task_index
    task = @repository.find(index)
    task.mark_as_complete
  end
end
