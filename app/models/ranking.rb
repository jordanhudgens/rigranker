class Ranking < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  belongs_to :deduction
  belongs_to :rig

  validates_presence_of :ranking_for_day, :rig_id
end

    t.boolean  "poor_event_sequence" => 1.20
    t.boolean  "poor_comments" => 1.75
    t.boolean  "blank_safety_meeting" => 1.00
    t.boolean  "missing_rig_crew_travel_details" => 1.00
    t.boolean  "not_using_device" => 3.00
    t.boolean  "not_syncing_device" => 1.00
    t.boolean  "missing_tubing_details" => 1.00
    t.boolean  "poor_event_accuracy" => 1.50
    t.boolean  "missing_events" => 1.25
    t.boolean  "missing_shut_in_overnight_details" => 1.00
    t.boolean  "missing_pressure_details" => 1.00
    t.boolean  "poor_rig_up_rig_down_accuracy" => 2.00
    t.boolean  "did_not_stop_timer" => 2.50
    t.boolean  "missing_well_control_details" => 1.15
    t.boolean  "poor_safety_personnel_details" => 1.30
    t.boolean  "missing_waiting_on_details" => 3.00
    t.boolean  "poor_well_control_comments" => 1.00
    t.boolean  "missing_failure_details" => 1.50
    t.boolean  "missing_tag_fill_details" => 1.00