class Client < ActiveRecord::Base

  has_many :repairs

  validates :last_name, :first_name, :phone_number, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  def full_name
    last_name + ' ' + first_name
  end
end
