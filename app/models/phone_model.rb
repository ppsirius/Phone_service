class PhoneModel < ActiveRecord::Base
  validates :name, presence: true
end
