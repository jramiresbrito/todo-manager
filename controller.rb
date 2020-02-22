require_relative 'task'
require_relative 'task_repository'

class Controller
  def initialize(repository, view)
    @repository = repository
    @view = view
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

  def mark_task_as_completed
  end

  def remove_task
  end
end
