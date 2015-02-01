RailsAdmin.config do |config|
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end

  config.model 'User' do
    field :name
  end

  config.model 'Rig' do
    field :company
    field :number
    field :rankings
  end

  config.model 'Ranking' do
    field :ranking_for_day
    field :score
    field :company
    field :rig
    field :user

    field :poor_event_sequence
    field :poor_comments
    field :blank_safety_meeting
    field :missing_rig_crew_travel_details
    field :not_using_device
    field :not_syncing_device
    field :missing_tubing_details
    field :missing_events
    field :missing_shut_in_overnight_details
    field :missing_pressure_details
    field :poor_rig_up_rig_down_accuracy
    field :did_not_stop_timer
    field :missing_well_control_details
    field :poor_safety_personnel_details
    field :missing_waiting_on_details
    field :poor_well_control_comments
    field :missing_failure_details
    field :missing_tag_fill_details

    configure :score do
      read_only true
    end

    edit do
      exclude_fields :created_at, :updated_at
    end
  end
end
