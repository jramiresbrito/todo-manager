class View
  def ask_user_for_task_title
    puts 'What do you want to do?'
    print '> '
    gets.chomp
  end

  def print_tasks(tasks)
    tasks.each_with_index do |task, index|
      x = task.completed? ? 'X' : ' '
      puts "#{index + 1}: [#{x}] #{task.title}"
    end
  end

  def ask_for_task_index
    puts 'Which task number?'
    print '> '
    gets.chomp.to_i - 1
  end
end
