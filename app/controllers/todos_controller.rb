class TodosController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create,:update,:destroy]
    def index
       @todos = Todo.all
       render json: @todos
    end
   

   end