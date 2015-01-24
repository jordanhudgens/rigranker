class RankingsController < ApplicationController
  before_action :set_ranking, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rankings = Ranking.all
    respond_with(@rankings)
  end

  def show
    respond_with(@ranking)
  end

  def new
    @ranking = Ranking.new
    respond_with(@ranking)
  end

  def edit
  end

  def create
    @ranking = Ranking.new(ranking_params)
    @ranking.user = current_user
    @ranking.save
    respond_with(@ranking)
  end

  def update
    @ranking.update(ranking_params)
    respond_with(@ranking)
  end

  def destroy
    @ranking.destroy
    respond_with(@ranking)
  end

  private
    def set_ranking
      @ranking = Ranking.find(params[:id])
    end

    def ranking_params
      params.require(:ranking).permit(:score, :user_id, :company_id, :ranking_for_day)
    end
end
