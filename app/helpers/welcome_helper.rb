module WelcomeHelper
  def medicine_select
    # Example output: [ ["status1", "status1"], ["status2", "status2"] ]
    [].tap do |arr|
      @medicines.each { |medicine| arr << [medicine.name, medicine.id] }
    end
  end
end
