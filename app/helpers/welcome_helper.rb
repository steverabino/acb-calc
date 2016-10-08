module WelcomeHelper
  def medicine_select
    [].tap do |arr|
      @medicines.order("name ASC").each { |medicine| arr << [medicine.name, medicine.id, { 'medicine' => medicine.name, 'score' => medicine.score, 'brands' => medicine.brands_list }] }
    end
  end

  def brands_select
    [].tap do |arr|
      @brands.order("name ASC").each { |brand| arr << [brand.name, brand.medicine.id, { 'medicine' => brand.medicine.name, 'score' => brand.medicine.score, 'brands' => brand.medicine.brands_list }] }
    end
  end

  def select_options
    select_options = medicine_select + brands_select
    select_options = select_options.sort_by { |e| e[0] }
    select_options.unshift(["Please Select", 0, {score: 0, medicine: "", brands: ""}])
  end

end
