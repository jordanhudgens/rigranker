class Ranking < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  belongs_to :deduction
  belongs_to :rig

  validates_presence_of :ranking_for_day, :rig_id
end
