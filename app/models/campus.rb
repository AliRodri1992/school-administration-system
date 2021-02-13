class Campus < ApplicationRecord
  belongs_to :university, inverse_of: :campus
end
