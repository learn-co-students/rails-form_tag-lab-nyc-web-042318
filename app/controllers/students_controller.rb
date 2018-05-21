class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    # byebug
    @student = Student.create(params[:student])
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end


end
