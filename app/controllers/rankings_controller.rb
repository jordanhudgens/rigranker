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
      params.require(:ranking).permit(
        :score,
        :user_id,
        :company_id,
        :ranking_for_day,
        :rig_id,
        :poor_event_sequence,
        :poor_comments,
        :blank_safety_meeting,
        :missing_rig_crew_travel_details,
        :not_using_device,
        :not_syncing_device,
        :missing_tubing_details,
        :poor_event_accuracy,
        :missing_events,
        :missing_shut_in_overnight_details,
        :missing_pressure_details,
        :poor_rig_up_rig_down_accuracy,
        :did_not_stop_timer,
        :missing_well_control_details,
        :poor_safety_personnel_details,
        :missing_waiting_on_details,
        :poor_well_control_comments,
        :missing_failure_details,
        :missing_tag_fill_details,
      )
    end
end