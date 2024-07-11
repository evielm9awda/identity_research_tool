class DataAnalyzer
  attr_reader :analyzed_data

  def initialize(raw_data)
    @raw_data = raw_data
    @analyzed_data = analyze
  end

  private

  def analyze
    @raw_data.map do |entry|
      identities = entry['identities'].split(',').map(&:strip)
      {
        id: entry['id'],
        identities: identities,
        experiences: entry['experiences'],
        identity_counts: identities.tally
      }
    end
  end
end
