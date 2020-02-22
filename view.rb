class View
  def ask_user_for_task_title
    puts 'What do you want to do? '
    print '> '
    gets.chomp
  end

  def print_tasks(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1}: #{task.title}"
    end
  end
end
