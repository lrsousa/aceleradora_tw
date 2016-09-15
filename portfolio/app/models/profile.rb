class Profile < ApplicationRecord
  has_many :skills
  has_many :jobs

  accepts_nested_attributes_for :skills, allow_destroy: true
  accepts_nested_attributes_for :jobs, allow_destroy: true
end
