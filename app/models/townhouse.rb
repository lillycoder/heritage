class Townhouse < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :primaryphone, numericality: {greater_than_or_equal_to: 0}
  validates :primaryemail, presence: true
  validates :emergency, presence: true

end
