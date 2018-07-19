class ProjectsController < ApplicationController

  def update
    @current_project = Project.find_by(params.permit(:project_name))
    current_todo = @current_project.todos.find_by(params.permit(:todo_name))
    if current_todo.isCompleted
      current_todo.update_attributes(isCompleted: false)
    else
      current_todo.update_attributes(isCompleted: true)
    end
  end

  def index
    @project = Project.all
  end

  def create
    #@current_project = Project.find_by(params.require(:current_project).permit(:selected))
    #@todo = @current_project.todos.build(params.require(:projects).permit(:text))
    #@current_project.todos << Todo.create(params.require(:current_project).permit(:text))


    @current_project = Project.find_by(params.permit(:title))
    @current_project.todos << Todo.create(params.permit(:text))
    redirect_back(fallback_location: root_path)
  end



end
