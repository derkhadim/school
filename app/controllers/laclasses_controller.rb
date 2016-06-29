class LaclassesController < ApplicationController
  before_action :set_laclass, only: [:show, :edit, :update, :destroy]

  # GET /laclasses
  # GET /laclasses.json
  def index
    @laclasses = Laclasse.all
    authorize! :read, @laclass
  end

  # GET /laclasses/1
  # GET /laclasses/1.json
  def show
    @students = Student.all.where(laclasse_id: @laclass.id, status: "Oui")
  end

  # GET /laclasses/new
  def new
    @laclass = Laclasse.new
  end

  # GET /laclasses/1/edit
  def edit
  end

  # POST /laclasses
  # POST /laclasses.json
  def create
    @laclass = Laclasse.new(laclass_params)

    #cancan vérifier la permission du user
    authorize! :create, @laclass

    respond_to do |format|
      if @laclass.save
        format.html { redirect_to @laclass, notice: 'Laclasse was successfully created.' }
        format.json { render :show, status: :created, location: @laclass }
      else
        format.html { render :new }
        format.json { render json: @laclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laclasses/1
  # PATCH/PUT /laclasses/1.json
  def update
    respond_to do |format|
      if @laclass.update(laclass_params)
        format.html { redirect_to @laclass, notice: 'Laclasse was successfully updated.' }
        format.json { render :show, status: :ok, location: @laclass }
      else
        format.html { render :edit }
        format.json { render json: @laclass.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update, @laclass
  end

  # DELETE /laclasses/1
  # DELETE /laclasses/1.json
  def destroy
    authorize! :destroy, @laclass
    @laclass.destroy
    respond_to do |format|
      format.html { redirect_to laclasses_url, notice: 'Laclasse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laclass
      @laclass = Laclasse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laclass_params
      params.require(:laclasse).permit(:name)
    end
end
