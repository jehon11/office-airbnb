class OfficeSpace < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :reservations
  mount_uploader :photo, PhotoUploader
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :users, through: :reservations
  has_many :reviews
  validates :owner, :name, :price, :address, presence: true
end
