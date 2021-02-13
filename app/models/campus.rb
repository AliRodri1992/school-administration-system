class Campus < ApplicationRecord
  belongs_to :university, inverse_of: :campus

  validates :name, presence: true, uniqueness: true
end