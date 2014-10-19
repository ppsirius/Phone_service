class Client < ActiveRecord::Base
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :phone_number, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
