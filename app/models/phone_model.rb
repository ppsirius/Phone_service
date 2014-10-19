class PhoneModel < ActiveRecord::Base

  has_many :repairs

  validates :name, presence: true
end
