class TodosController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create,:update,:destroy]
    def index
       @todos = Todo.order(:task_completed)
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

    def update
        @todo = Todo.find(params[:id])
        
        if @todo.update(todo_params)
            render json: @todo
        else
            render json: @todo.errors, status: :unprocessable_entity
        end
    end
        
    def destroy
        @todo = Todo.find(params[:id])
        
        if @todo
            @todo.destroy
            render json: { message: 'Deleted the todo task' }, status: :ok
        else
            render json: @todo.errors, status: :unprocessable_entity
        end

    end

    private
    def todo_params
        params.require(:todo).permit(:title, :description, :task_generate_date, :task_completed)
    end

end