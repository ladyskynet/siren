class Incident < ApplicationRecord
  belongs_to :incident_commander, class_name: "User"
  has_many :messages
end
