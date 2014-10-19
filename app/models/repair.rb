class Repair < ActiveRecord::Base

  belongs_to :phone_model
  belongs_to :client

  validates :phone_model, :client, :status, :imei, :description,  presence: true

  state_machine :status, :initial => :in_repair do 

    event :fix do 
      transition :in_repair => :fixed, :sent_to_service => :fixed, :not_repairable => :fixed
    end

    event :send_to_service do 
      transition :in_repaire => :sent_to_service
    end

    event :cant_repair do 
      transition :in_repaire => :not_repairable, :sent_to_service => :not_repairable
    end
  end

end
