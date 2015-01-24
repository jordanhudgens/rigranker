class Company < ActiveRecord::Base
  has_many :rigs
  has_many :rankings
end
