class University < ApplicationRecord
  has_many :campus, inverse_of: :university
end
