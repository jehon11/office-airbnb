class Review < ApplicationRecord
  belongs_to :user
  belongs_to :office_space
  validates :comment, :rating, presence: true
end
