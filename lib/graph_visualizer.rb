require 'json'

class GraphVisualizer
  def initialize(coded_data)
    @coded_data = coded_data
  end

  def generate_graph_data
    nodes = generate_nodes
    links = generate_links
    { nodes: nodes, links: links }.to_json
  end

  private

  def generate_nodes
    @coded_data.flat_map do |entry|
      entry[:identities].map do |identity|
        {
          id: "#{entry[:id]}_#{identity}",
          label: identity,
          group: identity,
          strength: entry[:identity_strength][identity]
        }
      end
    end.uniq { |node| node[:id] }
  end

  def generate_links
    @coded_data.flat_map do |entry|
      entry[:identities].combination(2).map do |identity1, identity2|
        {
          source: "#{entry[:id]}_#{identity1}",
          target: "#{entry[:id]}_#{identity2}",
          value: 1
        }
      end
    end
  end
end
