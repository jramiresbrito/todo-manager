class Task
  attr_reader :title
  def initialize(title)
    @title = title
    @completed = false
  end
end
