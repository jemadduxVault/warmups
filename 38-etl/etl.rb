class ETL
  def self.transform(input)
    word = {}
    input.each do |key,value|
      value.each do |val|
        word[val.downcase] = key
      end
    end
    word
  end


end
