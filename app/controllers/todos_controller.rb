# app/controllers/todos_controller.rb
class TodosController < ApplicationController
    before_action :authenticate_user!, only: [:create]
  
    def index
      @todos = current_user.todos
      render json: @todos
    end
  
    def create
      @todo = current_user.todos.build(todo_params)
      if @todo.save
        render json: @todo, status: :created
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def todo_params
      params.require(:todo).permit(:title)
    end
  end