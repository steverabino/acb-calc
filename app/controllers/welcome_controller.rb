class WelcomeController < ApplicationController
  def index
    @medicines = Medicine.all
    @brands = Brand.all
  end

  def autocomplete
    medicines = []
    Medicine.all.each do |medicine|
      medicines << { name: medicine.name, score: medicine.score, medicine: medicine.name, brands: medicine.brands_list }
    end
    Brand.all.each do |brand|
      medicines << { name: brand.name, score: brand.medicine.score, medicine: brand.medicine.name, brands: brand.medicine.brands_list }
    end

    medicines = medicines.sort_by { |k| k[:name] }

    a = medicines.map{|s| { name: s[:name], score: s[:score], medicine: s[:medicine], brands: s[:brands] }}
    a = a.to_json

    render json: a

  end
end
