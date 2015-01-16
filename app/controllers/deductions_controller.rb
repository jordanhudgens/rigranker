class DeductionsController < ApplicationController
  before_action :set_deduction, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @deductions = Deduction.all
    respond_with(@deductions)
  end

  def show
    respond_with(@deduction)
  end

  def new
    @deduction = Deduction.new
    respond_with(@deduction)
  end

  def edit
  end

  def create
    @deduction = Deduction.new(deduction_params)
    @deduction.save
    respond_with(@deduction)
  end

  def update
    @deduction.update(deduction_params)
    respond_with(@deduction)
  end

  def destroy
    @deduction.destroy
    respond_with(@deduction)
  end

  private
    def set_deduction
      @deduction = Deduction.find(params[:id])
    end

    def deduction_params
      params.require(:deduction).permit(:title, :value)
    end
end
