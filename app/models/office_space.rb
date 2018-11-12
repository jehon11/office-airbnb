class OfficeSpace < ApplicationRecord
  has_many :reservations
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :users, through: :reservations
  validates :owner, :name, :price, :address, presence: true
end