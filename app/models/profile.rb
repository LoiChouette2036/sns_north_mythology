class Profile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :patron_deity, presence: true

  NORSE_GODS = [ "Odin", "Thor", "Loki", "Freya", "Tyr", "Baldur", "Frigg", "Heimdall", "Njord", "Skadi", "Hel", "Fenrir", "Jormungandr", "Ymir", "Idun" ]
end
