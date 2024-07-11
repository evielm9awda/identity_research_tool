require 'sinatra'
require_relative 'lib/data_manager'
require_relative 'lib/data_analyzer'
require_relative 'lib/data_coder'
require_relative 'lib/graph_visualizer'

class IdentityResearchTool < Sinatra::Base
  get '/' do
    data_manager = DataManager.new('data/survey_data.csv')
    analyzer = DataAnalyzer.new(data_manager.data)
    coder = DataCoder.new(analyzer.analyzed_data)
    visualizer = GraphVisualizer.new(coder.coded_data)
    
    @graph_data = visualizer.generate_graph_data
    erb :graph
  end

  run! if app_file == $0
end
