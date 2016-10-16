class Medicine < ApplicationRecord
  has_many :brands, inverse_of: :medicine, dependent: :destroy
  accepts_nested_attributes_for :brands,
                                reject_if: proc { |attributes| attributes['name'].blank? },
                                allow_destroy: true
  validates :name, presence: true, uniqueness: { message: "already exists" }
  validates :score, presence: true

  def brands_list
    list = []
    self.brands.each do |brand|
      list << brand.name
    end
    list.join(", ")
  end

end
