class StudentsController < ApplicationController

  def index
  	@students = Student.all
  end

  def shox
  end

  def new
  	@student = Student.new
  end

  def create
  	@student = Student.new(student_params)
  	if @student.save
  		redirect_to students_path, notice: 'Votre inscription a été bien prise en compte'
  	else
  		render 'new'
  	end
  end

  def edit
  end

  private
  	def student_params
  		params.require(:student).permit(:first_name, :last_name, :birth_day, :status)
  	end

end
