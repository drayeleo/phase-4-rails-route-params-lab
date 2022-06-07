class StudentsController < ApplicationController
  def index
    # byebug
    if params[:name]
      students = Student.by_name(params[:name])
      render json: students
    else
      students = Student.all
      render json: students
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
