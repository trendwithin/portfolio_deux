class TodonesController < ApplicationController
  before_action :set_todone, only: [:show, :edit, :update, :destroy]

  # GET /todones
  # GET /todones.json
  def index
    @todones = Todone.all
    authorize @todones
  end

  # GET /todones/1
  # GET /todones/1.json
  def show
  end

  # GET /todones/new
  def new
    @todone = Todone.new
    authorize @todone
  end

  # GET /todones/1/edit
  def edit
  end

  # POST /todones
  # POST /todones.json
  def create
    @todone = Todone.new(todone_params)
    authorize @todone
    respond_to do |format|
      if @todone.save
        format.html { redirect_to @todone, notice: 'Todone was successfully created.' }
        format.json { render :show, status: :created, location: @todone }
      else
        format.html { render :new }
        format.json { render json: @todone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todones/1
  # PATCH/PUT /todones/1.json
  def update
    respond_to do |format|
      if @todone.update(todone_params)
        authorize @todone
        format.html { redirect_to @todone, notice: 'Todone was successfully updated.' }
        format.json { render :show, status: :ok, location: @todone }
      else
        format.html { render :edit }
        format.json { render json: @todone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todones/1
  # DELETE /todones/1.json
  def destroy
    @todone.destroy
    authorize @todone
    respond_to do |format|
      format.html { redirect_to todones_url, notice: 'Todone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todone
      @todone = Todone.find(params[:id])
      authorize @todone
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todone_params
      params.require(:todone).permit(:tasklist)
    end
end
