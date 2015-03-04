class Rig < ActiveRecord::Base
  belongs_to :company
  has_many :rankings

  validates_presence_of :company_id, :number

  def title
    "#{self.company.name} #{self.number}"
  end
end
