FIXTURES = File.join 'db', 'fixtures'

class Seed

  def initialize(options)
    @symbol = options[:symbol]
    @file = File.join FIXTURES, "#{@symbol.to_s.pluralize}.xml"
    @query = options[:query] || '//xs:enumeration'
    @model = @symbol.to_s.camelcase.constantize 
    @field = options[:field] || 'value'
  end

  def plant
    Nokogiri::XML(IO.read @file).
    xpath(@query).each do |node|
      @model.find_or_create_by_name(node[@field])
    end
  end
end

[
  :archival_container_format,
  :format,
  :kentucky_topic,
  :repository, # TODO give repository its own seed method
  :resource_type,
].each do |symbol|
  seed = Seed.new :symbol => symbol
  seed.plant
end

file = File.join FIXTURES, 'ISO-639-2_utf-8.txt'
IO.readlines(file).each do |line|
  line.strip!
  alpha3_bib, 
    alpha3_term, 
    alpha2, 
    english, 
    french = line.split('|')
  Language.where(
    name: english,
    name_fr: french,
    alpha3_bib: alpha3_bib,
    alpha3_term: alpha3_term,
    alpha2: alpha2
  ).first_or_create
end

[
  'preservation',
  'temporal',
].each do |name|
  Retention.where(
    name: name
  ).first_or_create
end 


[ '38.031912, -84.495327',
  '39.103215, -84.511828',
].each do |spatial_coverage|
  SpatialCoverage.find_or_create_by_name(spatial_coverage)
end


[ 'University of Kentucky',
  'University of Louisville',
].each do |creator|
  Creator.find_or_create_by_name(creator)
end

[ 'University of Kentucky',
  'University of Louisville',
].each do |source|
  Source.find_or_create_by_name(source)
end
