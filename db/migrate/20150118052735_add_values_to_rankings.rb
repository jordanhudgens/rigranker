class AddValuesToRankings < ActiveRecord::Migration
  def change
    add_column :rankings, :poor_event_sequence, :boolean
    add_column :rankings, :poor_comments, :boolean
    add_column :rankings, :blank_safety_meeting, :boolean
    add_column :rankings, :missing_rig_crew_travel_details, :boolean
    add_column :rankings, :not_using_device, :boolean
    add_column :rankings, :not_syncing_device, :boolean
    add_column :rankings, :missing_tubing_details, :boolean
    add_column :rankings, :poor_event_accuracy, :boolean
    add_column :rankings, :missing_events, :boolean
    add_column :rankings, :missing_shut_in_overnight_details, :boolean
    add_column :rankings, :missing_pressure_details, :boolean
    add_column :rankings, :poor_rig_up_rig_down_accuracy, :boolean
    add_column :rankings, :did_not_stop_timer, :boolean
    add_column :rankings, :missing_well_control_details, :boolean
    add_column :rankings, :poor_safety_personnel_details, :boolean
    add_column :rankings, :missing_waiting_on_details, :boolean
    add_column :rankings, :poor_well_control_comments, :boolean
    add_column :rankings, :missing_failure_details, :boolean
    add_column :rankings, :missing_tag_fill_details, :boolean
  end
end
