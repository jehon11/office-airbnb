class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :office_space
  validates :user, :office_space, :check_in, :check_out, presence: true
end
#comment
