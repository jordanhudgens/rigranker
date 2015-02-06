class Company < ActiveRecord::Base
  has_many :units
  has_many :rankings

  def title
    "#{self.name}"
  end
end
