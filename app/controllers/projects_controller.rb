class ProjectsController < ApplicationController
  def update
  end

  def index
    @project = Project.all
  end

  def create
    #@current_project = Project.find_by(params.require(:current_project).permit(:selected))
    #@todo = @current_project.todos.build(params.require(:projects).permit(:text))
    #@current_project.todos << Todo.create(params.require(:current_project).permit(:text))


    @current_project = Project.find_by(params.permit(:selected))
    @current_project.todos << Todo.create(params.permit(:text))
  end

  private
  def todo_params
    params.require(:current_project).permit(:text)
  end
end
