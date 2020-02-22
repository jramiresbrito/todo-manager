class Task
  attr_reader :title, :completed
  def initialize(title)
    @title = title
    @completed = false
  end
end
