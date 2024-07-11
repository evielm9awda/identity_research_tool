class DataCoder
  attr_reader :coded_data

  def initialize(analyzed_data)
    @analyzed_data = analyzed_data
    @coded_data = code
  end

  private

  def code
    @analyzed_data.map do |entry|
      {
        id: entry[:id],
        identities: entry[:identities],
        experiences: categorize_experiences(entry[:experiences]),
        identity_strength: calculate_identity_strength(entry[:identity_counts])
      }
    end
  end

  def categorize_experiences(experiences)
    experiences.split('.').map(&:strip).map do |experience|
      if experience.include?('positive')
        { text: experience, category: 'positive' }
      elsif experience.include?('negative')
        { text: experience, category: 'negative' }
      else
        { text: experience, category: 'neutral' }
      end
    end
  end

  def calculate_identity_strength(identity_counts)
    identity_counts.transform_values { |count| Math.log(count + 1) }
  end
end
