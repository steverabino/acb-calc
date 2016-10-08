class Medicine < ApplicationRecord
  has_many :brands, dependent: :destroy

  def brands_list
    list = []
    self.brands.each do |brand|
      list << brand.name
    end
    list.join(", ")
  end
end
