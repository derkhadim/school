class StudentsController < ApplicationController

  before_action :set_student, only: [:edit, :update, :show, :destroy]

  def index
  	@students = Student.all
  end

  def show
  end

  def search
    @students = Student.search_student(params[:q])
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

  def update
    authorize! :update, @student
    if @student.update(student_params)
      redirect_to laclasses_path, notice: 'inscription validée'
    else
      render 'edit'
    end
  end

  def destroy
    authorize! :destroy, @student
    @student.destroy
    redirect_to laclasses_path, notice: 'Eleve supprimé'
  end

  private
  	def student_params
  		params.require(:student).permit(:first_name, :last_name, :birth_day, :status, :laclasse_id)
  	end

    def set_student
      @student = Student.find(params[:id])
    end

end
