# identity_research_tool
Ruby-based tool designed to help you manage, analyze, code, and visualize qualitative survey data on identities. It lets you create network graphs to explore how different identities intersect and understand social dynamics better.
![Screen Recording - Jul 10, 2024](https://github.com/evielm9awda/identity_research_tool/assets/126894089/9e46ce5b-9dde-442d-8a6f-325a83eaeab9)

## Features

- Manage qualitative survey data
- Analyze and code survey responses
- Visualize data through interactive network graphs
- Explore intersectional identities and social dynamics

## Project Structure
- identity_research_tool/
- ├── lib/
- │ ├── data_manager.rb
- │ ├── data_analyzer.rb
- │ ├── data_coder.rb
- │ ├── graph_visualizer.rb
- │ └── models/
- │ ├── identity.rb
- │ ├── experience.rb
- │ └── connection.rb
- ├── data/
- │ └── survey_data.csv
- ├── views/
- │ └── graph.erb
- ├── public/
- │ ├── css/
- │ │ └── styles.css
- │ └── js/
- │ └── graph_interaction.js
- ├── app.rb
- ├── config.ru
- └── Gemfile

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/evielm9awda/identity_research_tool.git
    cd identity_research_tool
    ```

2. Install the required gems:
    ```sh
    sudo bundle install
    ```

3. Run the application:
    ```sh
    ruby app.rb
    ```

## Usage

- Place your survey data in the `data/survey_data.csv` file.
- Customize the `lib/data_manager.rb`, `lib/data_analyzer.rb`, `lib/data_coder.rb`, and `lib/graph_visualizer.rb` files as needed.
- Access the application through your web browser to interact with the visualizations.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

