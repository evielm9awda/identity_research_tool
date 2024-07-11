class Connection
  attr_reader :id, :source_id, :target_id, :strength

  def initialize(id, source_id, target_id, strength)
    @id = id
    @source_id = source_id
    @target_id = target_id
    @strength = strength
  end
end
