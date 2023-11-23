class TodosController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create,:update,:destroy]
    def index
       @todos = Todo.all
       render json: @todos
    end
   
    def create
        @todo = Todo.new(todo_params)
        
        if @todo.save
            render json: @todo, status: :created
        else
            render json: @todo.errors, status: :unprocessable_entity
        end
    end

    def todo_params
        params.require(:todo).permit(:title, :description, :task_generate_date, :task_completed)
    end

end