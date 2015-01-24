class Ranking < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  belongs_to :deduction
  belongs_to :rig

  validates_presence_of :ranking_for_day, :rig_id, :user_id, :company_id

  before_create :generate_score

  def generate_score
    starting_score = 10.0
    if self.poor_event_sequence then starting_score -= 1.20 end
    if self.poor_comments then starting_score -= 1.75 end
    if self.blank_safety_meeting then starting_score -= 1.00 end
    if self.missing_rig_crew_travel_details then starting_score -= 1.00 end
    if self.not_using_device then starting_score -= 3.00 end
    if self.not_syncing_device then starting_score -= 1.00 end
    if self.missing_tubing_details then starting_score -= 1.00 end
    if self.poor_event_accuracy then starting_score -= 1.50 end
    if self.missing_events then starting_score -= 1.25 end
    if self.missing_shut_in_overnight_details then starting_score -= 1.00 end
    if self.missing_pressure_details then starting_score -= 1.00 end
    if self.poor_rig_up_rig_down_accuracy then starting_score -= 2.00 end
    if self.did_not_stop_timer then starting_score -= 2.50 end
    if self.missing_well_control_details then starting_score -= 1.15 end
    if self.poor_safety_personnel_details then starting_score -= 1.30 end
    if self.missing_waiting_on_details then starting_score -= 3.00 end
    if self.poor_well_control_comments then starting_score -= 1.00 end
    if self.missing_failure_details then starting_score -= 1.50 end
    if self.missing_tag_fill_details then starting_score -= 1.00 end
    self.score = starting_score.round(2)
  end

end
