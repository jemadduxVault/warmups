class ETL
  def self.transform(input)
    output = {}
    input.each do |key, values|
      values.each { |value| output[value.downcase] = key }
    end
    output
  end
end
