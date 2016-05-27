class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :first_name, use: :slugged

  has_attached_file :image, styles: { medium: "400x400#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
