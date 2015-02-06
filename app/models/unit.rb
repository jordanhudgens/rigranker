class Unit < ActiveRecord::Base
  belongs_to :company

  def title
    "#{self.company.name} #{self.number}"
  end
end
