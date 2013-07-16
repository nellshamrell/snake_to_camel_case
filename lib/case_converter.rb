class CaseConverter
  def snake_to_camel(string)
    string.gsub(/(^[^a-z]?[a-z])|(_[a-z])/) {|char| char.upcase}
  end
end
