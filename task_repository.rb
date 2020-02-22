class TaskRepository
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end
end
