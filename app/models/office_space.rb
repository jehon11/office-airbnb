class OfficeSpace < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :reservations
  mount_uploader :photo, PhotoUploader
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :users, through: :reservations
  has_many :reviews
  validates :owner, :name, :price, :address, presence: true

  include PgSearch
  pg_search_scope :search_address,
    against: [:address],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def average_rating
    sum = 0
    reviews.each do |review|
      sum += review.rating unless review.rating.nil?
    end
    if sum.fdiv(reviews.length).nan?
      ''
    else
      sum.fdiv(reviews.length).fdiv(0.5).ceil * 0.5
    end
  end

  def stars
    average_rating == '' ? 0 : average_rating.floor
  end

  def half_star
    average_rating == '' ? '' : !(average_rating % 1 == 0)
  end

end
