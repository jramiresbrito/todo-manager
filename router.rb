require_relative 'controller'

class Router
  def initialize
    @controller = Controller.new
  end

  def run
    loop do
      puts 'What do you want to do next?'
      puts '1 - Add a task'
      puts '2 - List tasks'
      puts '3 - Mark task as complete'
      choice = gets.chomp.to_i

      case choice
      when 1
        @controller.add_task
      when 2
        @controller.list_tasks
      when 3
        @controller.mark_task_as_complete
      else
        puts 'Invalid Option.'
      end
    end
  end
end
