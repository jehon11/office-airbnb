class Review < ApplicationRecord
  belongs_to :user
  belongs_to :office_space
  validates :comment, presence: true
end
