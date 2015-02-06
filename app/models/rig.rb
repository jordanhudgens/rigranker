class Rig < ActiveRecord::Base
  belongs_to :company
  has_many :rankings
  belongs_to :unit

  def title
    "#{self.company.name} #{self.number}"
  end
end
