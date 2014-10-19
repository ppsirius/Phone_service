class Repair < ActiveRecord::Base
  validates :phone_model_id, presence: true
  validates :client_id, presence: true
  validates :status, presence: true
  validates :imei, presence: true
  validates :description, presence: true
end
