# https://gist.github.com/jnunemaker/230531

module RecordConfig
  def self.[](key)
    unless @config
      raw_config = File.read(File.join(Rails.root, 'config', 'records.yml'))
      @config = YAML.load(raw_config)[Rails.env].symbolize_keys
    end
    @config[key]
  end

  def self.[]=(key, value)
    @config[key.to_sym] = value
  end
end
