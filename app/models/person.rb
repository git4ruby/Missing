class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :first_name, use: :slugged
end
