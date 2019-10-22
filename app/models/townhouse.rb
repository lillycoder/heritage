class Townhouse < ApplicationRecord
  belongs_to :user
  has_many :tenants

  validates :name, presence: true
  validates :address, presence: true
  validates :primaryphone, presence: true
  validates :primaryemail, presence: true
  validates :emergency, presence: true

end
