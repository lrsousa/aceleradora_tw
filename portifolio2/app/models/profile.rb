class Profile < ApplicationRecord

  has_many :skills
  has_many :jobs

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  accepts_nested_attributes_for :skills, allow_destroy: true
  accepts_nested_attributes_for :jobs, allow_destroy: true
end
