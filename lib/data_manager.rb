require 'csv'

class DataManager
  attr_reader :data

  def initialize(file_path)
    @data = load_csv(file_path)
  end

  private

  def load_csv(file_path)
    CSV.read(file_path, headers: true).map(&:to_h)
  end
end
