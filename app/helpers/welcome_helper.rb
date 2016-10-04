module WelcomeHelper
  def medicine_select
    [].tap do |arr|
      @medicines.order("name ASC").each { |medicine| arr << [medicine.name, medicine.id, { 'score' => medicine.score }] }
    end
  end
end
