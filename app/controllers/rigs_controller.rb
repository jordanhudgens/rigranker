class RigsController < ApplicationController
  before_action :set_rig, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rigs = Rig.all
    respond_with(@rigs)
  end

  def show
    respond_with(@rig)
  end

  def new
    @rig = Rig.new
    respond_with(@rig)
  end

  def edit
  end

  def create
    @rig = Rig.new(rig_params)
    @rig.save
    respond_with(@rig)
  end

  def update
    @rig.update(rig_params)
    respond_with(@rig)
  end

  def destroy
    @rig.destroy
    respond_with(@rig)
  end

  private
    def set_rig
      @rig = Rig.find(params[:id])
    end

    def rig_params
      params.require(:rig).permit(:company_id, :number)
    end
end
