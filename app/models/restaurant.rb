class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :phone_number, presence: true
  validates :category, presence: true, allow_blank: false, inclusion: { in:["chinese", "italian", "japanese", "french", "belgian"] }

end
