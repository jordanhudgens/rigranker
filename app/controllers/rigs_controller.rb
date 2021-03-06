class RigsController < ApplicationController
  before_action :set_rig, only: [:show, :edit, :update, :destroy]

  # GET /Rigs
  # GET /Rigs.json
  def index
    @rigs = Rig.all
  end

  # GET /Rigs/1
  # GET /Rigs/1.json
  def show
  end

  # GET /Rigs/new
  def new
    @rig = Rig.new
  end

  # GET /Rigs/1/edit
  def edit
  end

  # POST /Rigs
  # POST /Rigs.json
  def create
    @rig = Rig.new(rig_params)

    respond_to do |format|
      if @rig.save
        format.html { redirect_to @rig, notice: 'Rig was successfully created.' }
        format.json { render :show, status: :created, location: @rig }
      else
        format.html { render :new }
        format.json { render json: @rig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Rigs/1
  # PATCH/PUT /Rigs/1.json
  def update
    respond_to do |format|
      if @rig.update(rig_params)
        format.html { redirect_to @rig, notice: 'Rig was successfully updated.' }
        format.json { render :show, status: :ok, location: @rig }
      else
        format.html { render :edit }
        format.json { render json: @rig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Rigs/1
  # DELETE /Rigs/1.json
  def destroy
    @rig.destroy
    respond_to do |format|
      format.html { redirect_to rigs_url, notice: 'Rig was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rig
      @rig = Rig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rig_params
      params.require(:rig).permit(:company_id, :number)
    end
end
