class Repair < ActiveRecord::Base

  belongs_to :phone_model
  belongs_to :client

  validates :phone_model, :client, :status, :imei, :description,  presence: true

end
