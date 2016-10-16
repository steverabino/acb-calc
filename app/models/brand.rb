class Brand < ApplicationRecord
  belongs_to :medicine, inverse_of: :brands
end
