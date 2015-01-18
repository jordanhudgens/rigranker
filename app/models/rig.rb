class Rig < ActiveRecord::Base
  belongs_to :company
  has_many :rankings

  def title
    "#{self.company.name} #{self.number}"
  end
end
