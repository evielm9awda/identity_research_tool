class Experience
  attr_reader :id, :description, :category

  def initialize(id, description, category)
    @id = id
    @description = description
    @category = category
  end
end
