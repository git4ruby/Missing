class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :first_name, use: :slugged

  has_attached_file :image, styles: { medium: "400x400#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, numericality: { only_integer: true }
  validates :nationality, presence: true
  validates :gender, presence: true
  validates :missing_date, presence: true

end
