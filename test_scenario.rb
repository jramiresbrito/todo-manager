require_relative 'router'
require_relative 'task_repository'
require_relative 'view'
require_relative 'controller'

repository = TaskRepository.new
view = View.new
controller = Controller.new(repository, view)

router = Router.new(controller)
router.run
