class TaskRepository
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def find(index)
    @tasks[index]
  end
end
