class Job < ApplicationRecord
  belongs_to :profile, optional: true
end
