class PreinscriptionController < ApplicationController

  def index
  	@students = Student.all.where(status: nil )
  end

end
