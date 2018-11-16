class Conversation < ApplicationRecord
  belongs_to :reservation
  has_many :messages
end
