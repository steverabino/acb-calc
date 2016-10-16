class Medicine < ApplicationRecord
  has_many :brands, inverse_of: :medicine
  accepts_nested_attributes_for :brands,
                                reject_if: proc { |attributes| attributes['name'].blank? },
                                allow_destroy: true

  def brands_list
    list = []
    self.brands.each do |brand|
      list << brand.name
    end
    list.join(", ")
  end

end
