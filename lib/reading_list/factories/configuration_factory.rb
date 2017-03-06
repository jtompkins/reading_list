require 'yaml'
require 'reading_list/models/configuration'

module ReadingList
  class ConfigurationFactory
    def initialize(config_file:)
      @config_file = config_file
    end

    def config
      yaml_text = IO.read(File.expand_path(@config_file))
      yaml_hash = YAML.safe_load(yaml_text)
      Configuration.new(yaml_hash)
    end
  end
end
